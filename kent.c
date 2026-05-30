/*
 * File:   NOPID.c
 *
 * Description:
 * Line Follower tuned for BASE_SPEED = 45
 *
 * Updates:
 * - BASE_SPEED fixed at 45
 * - Stable dashed-line logic
 * - Gentle lost-line recovery instead of aggressive spin
 * - Stops robot if line is lost for around 2 seconds
 * - Startup stabilization to prevent aggressive spin when button is pressed
 * - Slight left-turn bias only for left 90-degree turn/recovery
 */

#include <xc.h>
#include <stdint.h>
#include <stdlib.h>

// PIC16F877A Configuration Bit Settings
#pragma config FOSC = HS, WDTE = OFF, PWRTE = ON, BOREN = ON, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF

#define _XTAL_FREQ 20000000

// Pin Definitions
#define L_MOTOR_DIR  RC0
#define R_MOTOR_DIR  RC4
#define LED          RD2
#define BUTTON       RB0

// ================= MOTOR CONSTANTS =================

#define BASE_SPEED          45      // NON-NEGOTIABLE BASE SPEED
#define MAX_FWD_SPEED       105
#define MAX_REV_SPEED       70

#define MIN_TURN_SPEED      0

// ================= STARTUP HANDLING =================
//
// Prevents aggressive spin immediately after pressing the button.
// During this window, the robot will not hard-pivot.

#define STARTUP_STABLE_MS       350
#define STARTUP_CREEP_SPEED     22

// ================= DASHED / LOST LINE HANDLING =================

#define GAP_SPEED           34

// Higher = more stable on broken/dashed lines.
// Lower = reacts sooner to broken-line-to-turn sections.
#define GAP_GRACE_LOOPS     14

// Stop robot after around 2 seconds off the line.
#define LOST_LINE_STOP_MS   2000

// After dashed-line grace, use gentle search before stopping.
#define RECOVERY_SWEEP_LIMIT 80

// ================= PIVOT / RECOVERY TUNING =================
//
// Slight left bias is back, but only for true left turn/recovery.
// Normal tracking remains mostly balanced.

#define LEFT_PIVOT_SPEED    86
#define RIGHT_PIVOT_SPEED   82

#define LEFT_PIVOT_TIME     42
#define RIGHT_PIVOT_TIME    35

#define LEFT_RECOVERY_SPEED   62
#define RIGHT_RECOVERY_SPEED  58

#define SEARCH_FORWARD      18

// ================= SENSOR THRESHOLDS =================

#define SENSOR_THRESHOLD     200
#define LINE_PRESENT_SUM     800

// ================= PID / PD TUNING =================
//
// correction = (KP * error + KD * derivative + KI * integral) / PID_DIV
//
// KI stays 0 because it usually worsens wavy/dashed tracks.

#define KP_NUM              6
#define KD_NUM              14
#define KI_NUM              0
#define PID_DIV             10

#define MAX_CORRECTION      65
#define INTEGRAL_LIMIT      120

// Calibration Data
uint16_t sensor_min[8], sensor_max[8];

// EEPROM Storage
__eeprom uint16_t ee_min[8];
__eeprom uint16_t ee_max[8];
__eeprom uint8_t  ee_magic;

// State Variables
int16_t last_known_error = 0;
int16_t last_error = 0;
int16_t smooth_error = 0;
int16_t integral = 0;

int8_t last_turn_dir = 0;       // -1 = left, 1 = right, 0 = unknown

uint16_t gap_timer = 0;
uint16_t lost_line_time_ms = 0;
uint16_t startup_timer_ms = 0;
uint8_t startup_active = 0;
uint8_t first_line_seen = 0;

// Function Prototypes
void init_hardware(void);
uint16_t read_adc(uint8_t channel);
void set_motors(int16_t left_pwm, int16_t right_pwm);
void calibrate_sensors(void);
void save_cal_to_eeprom(void);
void load_cal_from_eeprom(void);
int16_t clamp_int16(int16_t value, int16_t min_val, int16_t max_val);

typedef enum { BTN_NONE, BTN_SHORT, BTN_LONG } btn_state_t;
btn_state_t check_button(void);

void main(void) {
    for(uint8_t i = 0; i < 10; i++) {
        __delay_ms(100);
    }

    init_hardware();
    load_cal_from_eeprom();
    __delay_ms(500);

    while(1) {
        set_motors(0, 0);

        gap_timer = 0;
        lost_line_time_ms = 0;
        startup_timer_ms = 0;
        startup_active = 0;
        first_line_seen = 0;

        last_known_error = 0;
        last_error = 0;
        smooth_error = 0;
        integral = 0;
        last_turn_dir = 0;

        LED = 1;

        btn_state_t btn = check_button();

        if (btn == BTN_LONG) {
            calibrate_sensors();
            save_cal_to_eeprom();

            LED = 1;
            __delay_ms(500);
            LED = 0;
            __delay_ms(500);
            LED = 1;
        }

        else if (btn == BTN_SHORT) {
            LED = 0;

            /*
             * Start delay after button press.
             * This gives your hand time to release the robot
             * and avoids reading unstable sensor values immediately.
             */
            set_motors(0, 0);
            __delay_ms(300);

            /*
             * Reset all control memory right before running.
             */
            gap_timer = 0;
            lost_line_time_ms = 0;
            startup_timer_ms = 0;
            startup_active = 1;
            first_line_seen = 0;

            last_known_error = 0;
            last_error = 0;
            smooth_error = 0;
            integral = 0;
            last_turn_dir = 0;

            while (1) {
                if (BUTTON == 1) {
                    set_motors(0, 0);
                    while(BUTTON == 1);
                    __delay_ms(200);
                    break;
                }

                int32_t sum_weights = 0;
                int32_t sum_vals = 0;
                uint8_t active_sensors = 0;

                uint8_t s_active[8] = {0,0,0,0,0,0,0,0};

                uint8_t left_edge_seen = 0;
                uint8_t right_edge_seen = 0;
                uint8_t center_seen = 0;

                const int16_t weights[] = {-70, -50, -30, -10, 10, 30, 50, 70};

                for (uint8_t i = 0; i < 8; i++) {
                    uint16_t raw_val = read_adc(i);

                    int32_t range = (int32_t)sensor_max[i] - sensor_min[i];

                    if (range < 100) {
                        continue;
                    }

                    int32_t normalized = ((int32_t)raw_val - sensor_min[i]) * 1000 / range;

                    if (normalized < 0) {
                        normalized = 0;
                    }

                    if (normalized > 1000) {
                        normalized = 1000;
                    }

                    if (normalized > SENSOR_THRESHOLD) {
                        s_active[i] = 1;

                        sum_weights += normalized * (int32_t)weights[i];
                        sum_vals += normalized;
                        active_sensors++;

                        if (i <= 1) {
                            left_edge_seen = 1;
                        }

                        if (i >= 6) {
                            right_edge_seen = 1;
                        }

                        if (i >= 2 && i <= 5) {
                            center_seen = 1;
                        }
                    }
                }

                /*
                 * Startup window.
                 *
                 * During startup:
                 * - no hard pivot
                 * - no aggressive recovery
                 * - if the line is visible, initialize error memory cleanly
                 * - if no line is visible, creep forward slowly instead of spinning
                 */
                if (startup_active) {
                    if (sum_vals > LINE_PRESENT_SUM) {
                        int16_t startup_error = (int16_t)(sum_weights / sum_vals);

                        smooth_error = startup_error;
                        last_error = startup_error;
                        last_known_error = startup_error;

                        if (startup_error < -14) {
                            last_turn_dir = -1;
                        }
                        else if (startup_error > 14) {
                            last_turn_dir = 1;
                        }
                        else {
                            last_turn_dir = 0;
                        }

                        first_line_seen = 1;

                        /*
                         * Gentle ramp during startup.
                         * Do not jump straight to 45 instantly.
                         */
                        if (startup_timer_ms < 120) {
                            set_motors(STARTUP_CREEP_SPEED, STARTUP_CREEP_SPEED);
                        }
                        else if (startup_timer_ms < 240) {
                            set_motors(35, 35);
                        }
                        else {
                            set_motors(BASE_SPEED, BASE_SPEED);
                        }
                    }
                    else {
                        /*
                         * No line on startup:
                         * Do not spin. Just creep forward slowly.
                         */
                        set_motors(STARTUP_CREEP_SPEED, STARTUP_CREEP_SPEED);
                    }

                    __delay_ms(10);
                    startup_timer_ms += 10;

                    if (startup_timer_ms >= STARTUP_STABLE_MS && first_line_seen) {
                        startup_active = 0;
                        gap_timer = 0;
                        lost_line_time_ms = 0;
                    }

                    /*
                     * If it still has not seen a line after startup window,
                     * stop instead of spinning.
                     */
                    if (startup_timer_ms >= 800 && !first_line_seen) {
                        set_motors(0, 0);
                        break;
                    }

                    continue;
                }

                /*
                 * HARD 90-DEGREE TURN DETECTION
                 *
                 * Slight left bias:
                 * left pivot is a bit stronger and longer.
                 */
                uint8_t hard_left_turn = 0;
                uint8_t hard_right_turn = 0;

                if ((s_active[0] || s_active[1]) && !center_seen && !right_edge_seen) {
                    hard_left_turn = 1;
                }

                if ((s_active[6] || s_active[7]) && !center_seen && !left_edge_seen) {
                    hard_right_turn = 1;
                }

                if (hard_left_turn) {
                    LED = 1;

                    gap_timer = 0;
                    lost_line_time_ms = 0;

                    last_turn_dir = -1;
                    last_known_error = -70;
                    last_error = -70;
                    smooth_error = -70;
                    integral = 0;

                    set_motors(-LEFT_PIVOT_SPEED, LEFT_PIVOT_SPEED);
                    __delay_ms(LEFT_PIVOT_TIME);
                }

                else if (hard_right_turn) {
                    LED = 1;

                    gap_timer = 0;
                    lost_line_time_ms = 0;

                    last_turn_dir = 1;
                    last_known_error = 70;
                    last_error = 70;
                    smooth_error = 70;
                    integral = 0;

                    set_motors(RIGHT_PIVOT_SPEED, -RIGHT_PIVOT_SPEED);
                    __delay_ms(RIGHT_PIVOT_TIME);
                }

                /*
                 * WIDE BLACK AREA / INTERSECTION
                 */
                else if (active_sensors >= 7) {
                    lost_line_time_ms = 0;
                    integral = 0;

                    if (last_turn_dir == -1 || last_known_error < -12) {
                        set_motors(-LEFT_PIVOT_SPEED, LEFT_PIVOT_SPEED);
                    }
                    else if (last_turn_dir == 1 || last_known_error > 12) {
                        set_motors(RIGHT_PIVOT_SPEED, -RIGHT_PIVOT_SPEED);
                    }
                    else {
                        set_motors(BASE_SPEED, BASE_SPEED);
                    }

                    __delay_ms(25);
                }

                /*
                 * NORMAL LINE FOLLOWING
                 */
                else if (sum_vals > LINE_PRESENT_SUM) {
                    LED = 1;

                    gap_timer = 0;
                    lost_line_time_ms = 0;

                    int16_t raw_error = (int16_t)(sum_weights / sum_vals);

                    /*
                     * Stable smoothing.
                     */
                    smooth_error = ((smooth_error * 3) + raw_error) / 4;

                    int16_t error = smooth_error;
                    int16_t abs_error = (error < 0) ? -error : error;

                    integral += error;
                    integral = clamp_int16(integral, -INTEGRAL_LIMIT, INTEGRAL_LIMIT);

                    int16_t derivative = error - last_error;
                    last_error = error;

                    int16_t correction = (int16_t)(((int32_t)KP_NUM * error +
                                                    (int32_t)KD_NUM * derivative +
                                                    (int32_t)KI_NUM * integral) / PID_DIV);

                    correction = clamp_int16(correction, -MAX_CORRECTION, MAX_CORRECTION);

                    if (error < -14) {
                        last_turn_dir = -1;
                    }
                    else if (error > 14) {
                        last_turn_dir = 1;
                    }

                    last_known_error = error;

                    int16_t left_speed = BASE_SPEED + correction;
                    int16_t right_speed = BASE_SPEED - correction;

                    /*
                     * Larger deadband for stable straight/dashed sections.
                     */
                    if (abs_error < 15) {
                        left_speed = BASE_SPEED;
                        right_speed = BASE_SPEED;
                    }

                    /*
                     * Medium correction:
                     * No reverse motor. Avoids wiggle.
                     */
                    else if (abs_error < 52) {
                        if (left_speed < MIN_TURN_SPEED) {
                            left_speed = MIN_TURN_SPEED;
                        }

                        if (right_speed < MIN_TURN_SPEED) {
                            right_speed = MIN_TURN_SPEED;
                        }
                    }

                    /*
                     * Strong visible correction:
                     * Still not full reverse pivot unless hard turn is detected.
                     */
                    else {
                        if (error < 0) {
                            left_speed = 0;
                            right_speed = BASE_SPEED + 18;
                        }
                        else {
                            left_speed = BASE_SPEED + 18;
                            right_speed = 0;
                        }
                    }

                    left_speed = clamp_int16(left_speed, -MAX_REV_SPEED, MAX_FWD_SPEED);
                    right_speed = clamp_int16(right_speed, -MAX_REV_SPEED, MAX_FWD_SPEED);

                    set_motors(left_speed, right_speed);
                }

                /*
                 * BROKEN LINE / LOST LINE HANDLING
                 */
                else {
                    LED = 0;

                    if (lost_line_time_ms >= LOST_LINE_STOP_MS) {
                        set_motors(0, 0);
                        break;
                    }

                    gap_timer++;

                    /*
                     * Dashed line mode:
                     * Move straight at reduced speed.
                     * No spinning, no sudden pivot.
                     */
                    if (gap_timer <= GAP_GRACE_LOOPS) {
                        set_motors(GAP_SPEED, GAP_SPEED);
                        __delay_ms(4);
                        lost_line_time_ms += 4;
                    }

                    /*
                     * Gentle recovery mode:
                     * Arc toward the last known direction.
                     *
                     * Slight left bias:
                     * left recovery has a little more speed than right recovery.
                     */
                    else if (gap_timer <= (GAP_GRACE_LOOPS + RECOVERY_SWEEP_LIMIT)) {
                        integral = 0;

                        if (last_turn_dir == -1 || last_known_error < -8) {
                            /*
                             * Gentle left search:
                             * left wheel slow, right wheel forward.
                             */
                            set_motors(SEARCH_FORWARD, LEFT_RECOVERY_SPEED);
                        }
                        else if (last_turn_dir == 1 || last_known_error > 8) {
                            /*
                             * Gentle right search:
                             * left wheel forward, right wheel slow.
                             */
                            set_motors(RIGHT_RECOVERY_SPEED, SEARCH_FORWARD);
                        }
                        else {
                            /*
                             * Unknown direction:
                             * creep straight.
                             */
                            set_motors(SEARCH_FORWARD, SEARCH_FORWARD);
                        }

                        __delay_ms(5);
                        lost_line_time_ms += 5;
                    }

                    /*
                     * After gentle recovery, stop rotating/searching.
                     * Creep forward until 2-second stop limit.
                     */
                    else {
                        set_motors(16, 16);
                        __delay_ms(5);
                        lost_line_time_ms += 5;
                    }
                }

                __delay_us(150);
            }
        }
    }
}

void init_hardware(void) {
    PORTC = 0xFF;

    TRISA = 0xFF;
    TRISE = 0x07;
    TRISB = 0xC1;
    TRISC = 0x00;
    TRISD = 0x00;

    ADCON1 = 0x80;
    ADCON0 = 0x81;

    PR2 = 255;
    CCP1CON = 0x0C;
    CCP2CON = 0x0C;
    T2CON = 0x04;

    CCPR1L = 255;
    CCPR2L = 255;
}

void calibrate_sensors(void) {
    for(uint8_t i = 0; i < 8; i++) {
        sensor_min[i] = 1023;
        sensor_max[i] = 0;
    }

    for(uint16_t t = 0; t < 400; t++) {
        for(uint8_t i = 0; i < 8; i++) {
            uint16_t val = read_adc(i);

            if(val < sensor_min[i]) {
                sensor_min[i] = val;
            }

            if(val > sensor_max[i]) {
                sensor_max[i] = val;
            }
        }

        __delay_ms(10);

        if(t % 5 == 0) {
            LED = !LED;
        }
    }
}

void save_cal_to_eeprom(void) {
    for(uint8_t i = 0; i < 8; i++) {
        ee_min[i] = sensor_min[i];
        ee_max[i] = sensor_max[i];
    }

    ee_magic = 0xA5;
}

void load_cal_from_eeprom(void) {
    if (ee_magic == 0xA5) {
        for(uint8_t i = 0; i < 8; i++) {
            sensor_min[i] = ee_min[i];
            sensor_max[i] = ee_max[i];
        }
    }
    else {
        for(uint8_t i = 0; i < 8; i++) {
            sensor_min[i] = 0;
            sensor_max[i] = 1023;
        }
    }
}

btn_state_t check_button(void) {
    if (BUTTON == 0) {
        return BTN_NONE;
    }

    uint16_t press_time = 0;

    while (BUTTON == 1) {
        __delay_ms(10);
        press_time += 10;

        if (press_time > 3000) {
            LED = ((press_time / 100) % 2) != 0;
        }
    }

    if (press_time > 3000) {
        return BTN_LONG;
    }

    if (press_time > 50) {
        return BTN_SHORT;
    }

    return BTN_NONE;
}

uint16_t read_adc(uint8_t channel) {
    ADCON0 &= 0xC7;
    ADCON0 |= (channel << 3);

    __delay_us(20);

    GO_nDONE = 1;

    while (GO_nDONE);

    return (uint16_t)((ADRESH << 8) | ADRESL);
}

int16_t clamp_int16(int16_t value, int16_t min_val, int16_t max_val) {
    if (value < min_val) {
        return min_val;
    }

    if (value > max_val) {
        return max_val;
    }

    return value;
}

void set_motors(int16_t left_pwm, int16_t right_pwm) {
    if (left_pwm >= 0) {
        L_MOTOR_DIR = 1;

        if (left_pwm > 150) {
            left_pwm = 150;
        }

        CCPR1L = (uint8_t)(255 - left_pwm);
    }
    else {
        L_MOTOR_DIR = 0;
        left_pwm = -left_pwm;

        if (left_pwm > 150) {
            left_pwm = 150;
        }

        CCPR1L = (uint8_t)left_pwm;
    }

    if (right_pwm >= 0) {
        R_MOTOR_DIR = 1;

        if (right_pwm > 150) {
            right_pwm = 150;
        }

        CCPR2L = (uint8_t)(255 - right_pwm);
    }
    else {
        R_MOTOR_DIR = 0;
        right_pwm = -right_pwm;

        if (right_pwm > 150) {
            right_pwm = 150;
        }

        CCPR2L = (uint8_t)right_pwm;
    }
}