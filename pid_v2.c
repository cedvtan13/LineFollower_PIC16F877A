/*
 * File:   pid_v2.c
 * Description: Stable PID with 90-Degree Cornering Logic
 * Hardware: PIC16F877A (20MHz), DRV8871, 44k RPM Motors (8:1)
 * Scaling: x256 (Right shift 8)
 */

#include <xc.h>
#include <stdint.h>
#include <stdlib.h> // for abs()

// PIC16F877A Configuration
#pragma config FOSC = HS, WDTE = OFF, PWRTE = ON, BOREN = ON, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF
#define _XTAL_FREQ 20000000     

// Pin Definitions
#define L_MOTOR_DIR  RC0
#define R_MOTOR_DIR  RC4
#define LED          RD2
#define BUTTON       RB0

// --- Tuned PID Constants (Scaled by 256) ---
#define KP_SCALED    750   // Sharper centering force
#define KI_SCALED    0     
#define KD_SCALED    9000  // High dampening for high-RPM motors

// --- Speed Constants ---
#define BASE_SPEED      70    
#define MAX_SPEED       180   
#define PIVOT_SPEED     98    
#define HARD_TURN_THR   50    
#define GAP_SPEED       60    

// --- Timing Constants (ms) ---
#define GAP_GRACE_MS    40    
#define LOST_TIMEOUT_MS 1000  // Stop after 1 second off-track

// Global Variables
uint16_t sensor_min[8], sensor_max[8];
int16_t last_error = 0;
int32_t integral = 0;
int8_t last_side = 0; // -1 for Left, 1 for Right
uint16_t lost_timer_ms = 0;

// Function Prototypes
void init_hardware(void);
uint16_t read_adc(uint8_t channel);
void set_motors(int16_t left, int16_t right);
void calibrate_sensors(void);

void main(void) {
    init_hardware();
    
    // 1. Wait for Button to Start Calibration
    LED = 1;
    while(BUTTON == 0) { } __delay_ms(100); while(BUTTON == 1) { } __delay_ms(100);
    
    calibrate_sensors();
    
    // 2. Wait for Button to Start Running
    LED = 1; 
    while(BUTTON == 0) { } __delay_ms(100); while(BUTTON == 1) { } __delay_ms(100);
    LED = 0;

    while(1) {
        int32_t avg = 0;
        int32_t sum = 0;
        uint8_t line_found = 0;
        
        // AN0 is Rightmost (+70), AN7 is Leftmost (-70)
        const int16_t weights[] = {70, 50, 30, 10, -10, -30, -50, -70};

        for (uint8_t i = 0; i < 8; i++) {
            uint16_t raw = read_adc(i);
            
            int32_t range = (int32_t)sensor_max[i] - sensor_min[i];
            if (range < 50) range = 50; 
            
            int32_t val = ((int32_t)raw - sensor_min[i]) * 1000 / range;
            if (val < 0) val = 0;
            if (val > 1000) val = 1000;

            if (val > 350) { // Higher threshold for noise immunity
                avg += (int32_t)val * weights[i];
                sum += val;
                line_found = 1;
            }
        }

        if (line_found) {
            lost_timer_ms = 0; // Reset timer when line is found
            int16_t error = (int16_t)(avg / sum);
            
            // Update last_side for recovery
            if (error > 20) last_side = 1;
            else if (error < -20) last_side = -1;
            
            // --- 90-DEGREE CORNER LOGIC ---
            if (error >= HARD_TURN_THR) {
                set_motors(PIVOT_SPEED, -PIVOT_SPEED); // Spin Right
                last_error = error;
            } else if (error <= -HARD_TURN_THR) {
                set_motors(-PIVOT_SPEED, PIVOT_SPEED); // Spin Left
                last_error = error;
            } else {
                // --- STANDARD PID ---
                integral += error;
                if (integral > 4000) integral = 4000;
                if (integral < -4000) integral = -4000;

                int32_t P = (int32_t)error * KP_SCALED;
                int32_t I = (int32_t)integral * KI_SCALED;
                int32_t D = (int32_t)(error - last_error) * KD_SCALED;
                
                int16_t correction = (int16_t)((P + I + D) >> 8);
                last_error = error;
                
                set_motors(BASE_SPEED + correction, BASE_SPEED - correction);
            }
        } else {
            // SAFETY & RECOVERY LOGIC
            integral = 0;
            if (lost_timer_ms < GAP_GRACE_MS) {
                // Drive straight through small gaps
                set_motors(BASE_SPEED, BASE_SPEED);
            } else if (lost_timer_ms < LOST_TIMEOUT_MS) {
                // Aggressive recovery turn toward last_side
                if (last_side == 1) {
                    set_motors(PIVOT_SPEED, -20); 
                } else if (last_side == -1) {
                    set_motors(-20, PIVOT_SPEED);
                } else {
                    set_motors(BASE_SPEED, BASE_SPEED);
                }
            } else {
                // Lost for > 1s, stop and flash LED
                set_motors(0, 0);
                while(1) {
                    LED = !LED;
                    __delay_ms(100);
                    if (BUTTON == 1) { // Wait for button press to reset
                        __delay_ms(200);
                        while(BUTTON == 1);
                        lost_timer_ms = 0;
                        break; 
                    }
                }
            }
        }
        
        __delay_ms(2);
        lost_timer_ms += 2;
    }
}

void init_hardware(void) {
    PORTC = 0x00;
    TRISA = 0xFF; 
    TRISE = 0x07;
    TRISB = 0x01;
    TRISC = 0x00;
    TRISD = 0x00;
    
    ADCON1 = 0x80;
    ADCON0 = 0x81;
    
    PR2 = 255; 
    CCP1CON = 0x0C; 
    CCP2CON = 0x0C; 
    T2CON = 0x04;   
    CCPR1L = 0; 
    CCPR2L = 0;
}

void calibrate_sensors(void) {
    for(uint8_t i=0; i<8; i++) { sensor_min[i] = 1023; sensor_max[i] = 0; }
    for(uint16_t t=0; t<300; t++) {
        if(t % 10 == 0) LED = !LED;
        for(uint8_t i=0; i<8; i++) {
            uint16_t val = read_adc(i);
            if(val < sensor_min[i]) sensor_min[i] = val;
            if(val > sensor_max[i]) sensor_max[i] = val;
        }
        __delay_ms(10);
    }
    LED = 1;
}

uint16_t read_adc(uint8_t channel) {
    ADCON0 &= 0xC7; ADCON0 |= (channel << 3);
    __delay_us(15); 
    GO_nDONE = 1;
    while (GO_nDONE);
    return (uint16_t)((ADRESH << 8) | ADRESL);
}

void set_motors(int16_t left, int16_t right) {
    if (left > MAX_SPEED) left = MAX_SPEED;
    if (left < -MAX_SPEED) left = -MAX_SPEED;
    if (right > MAX_SPEED) right = MAX_SPEED;
    if (right < -MAX_SPEED) right = -MAX_SPEED;
    
    // Left Motor (RC2=PWM, RC0=DIR)
    if (left >= 0) {
        L_MOTOR_DIR = 0;
        CCPR1L = (uint8_t)left;
    } else {
        L_MOTOR_DIR = 1;
        CCPR1L = (uint8_t)(255 + left); 
    }
    
    // Right Motor (RC1=PWM, RC4=DIR)
    if (right >= 0) {
        R_MOTOR_DIR = 0;
        CCPR2L = (uint8_t)right;
    } else {
        R_MOTOR_DIR = 1;
        CCPR2L = (uint8_t)(255 + right);
    }
}