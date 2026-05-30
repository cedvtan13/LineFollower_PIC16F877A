/*
 * File:   main.c
 * Author: Gemini CLI
 *
 * Created on May 22, 2026
 * Description: Bang-Bang Line Follower with Manual Calibration.
 */

#include <xc.h>
#include <stdint.h>

// PIC16F877A Configuration
#pragma config FOSC = HS, WDTE = OFF, PWRTE = ON, BOREN = ON, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF

#define _XTAL_FREQ 20000000     

// Pin Definitions
#define L_MOTOR_DIR  RC0
#define R_MOTOR_DIR  RC4
#define LED          RD2
#define BUTTON       RB0

// Requested Speed Constants
#define MAX_SPEED       45 
#define BASE_SPEED      30  
#define TURN_REVERSE   -15  

// Calibration Data
uint16_t sensor_min[8], sensor_max[8];

// Function Prototypes
void init_hardware(void);
uint16_t read_adc(uint8_t channel);
void set_motors(int16_t left_pwm, int16_t right_pwm);
void calibrate_sensors(void);

void main(void) {
    init_hardware();
    __delay_ms(1000); 

    while(1) {
        set_motors(0, 0); 
        LED = 1; 
        while(BUTTON == 0) {} __delay_ms(100); while(BUTTON == 1) {} __delay_ms(100);
        
        calibrate_sensors();
        
        LED = 1; 
        while(BUTTON == 0) {} __delay_ms(100); while(BUTTON == 1) {} __delay_ms(100);
        LED = 0; 

        while (1) {
            float sum_weights = 0;
            float sum_vals = 0;
            // Original weights: Negative = Left, Positive = Right
            const int16_t weights[] = {-70, -50, -30, -10, 10, 30, 50, 70};

            for (uint8_t i = 0; i < 8; i++) {
                uint16_t raw_val = read_adc(i);
                
                int32_t range = (int32_t)sensor_max[i] - sensor_min[i];
                if (range < 50) continue; 
                
                int32_t normalized = ((int32_t)raw_val - sensor_min[i]) * 1000 / range;
                if (normalized < 0) normalized = 0;
                if (normalized > 1000) normalized = 1000;

                // High normalized = absorption = black line
                int32_t line_intensity = normalized; 

                if (line_intensity > 200) { // Lowered threshold for better line capture
                    sum_weights += (float)line_intensity * weights[i];
                    sum_vals += (float)line_intensity;
                }
            }

            if (sum_vals > 400) {
                float error = sum_weights / sum_vals;
                
                // 5-State Bang-Bang Logic
                if (error < 35) {
                    set_motors(MAX_SPEED, TURN_REVERSE); // Hard Right
                } else if (error < 10) {
                    set_motors(MAX_SPEED, 0);            // Gentle Right
                } else if (error > -35) {
                    set_motors(TURN_REVERSE, MAX_SPEED); // Hard Left
                } else if (error > -10) {
                    set_motors(0, MAX_SPEED);            // Gentle Left
                } else {
                    set_motors(BASE_SPEED, BASE_SPEED);  // Straight
                }
            } else {
                // Line lost - stop
                set_motors(0, 0);
            }
            __delay_us(500); 
        }
    }
}

void init_hardware(void) {
    PORTC = 0x00; 
    TRISA = 0xFF; 
    TRISE = 0x07; 
    TRISB = 0x01; 
    TRISC = 0x00; 
    TRISD = 0x00; 
    
    ADCON1 = 0xC0; 
    ADCON0 = 0x81; 
    
    PR2 = 255; 
    CCP1CON = 0x0C; 
    CCP2CON = 0x0C; 
    T2CON = 0x04;   
    CCPR1L = 0; 
    CCPR2L = 0;
}

void calibrate_sensors(void) {
    set_motors(0, 0);
    for(uint8_t i=0; i<8; i++) { sensor_min[i] = 1023; sensor_max[i] = 0; }
    for(uint16_t t=0; t<200; t++) { 
        for(uint8_t i=0; i<8; i++) {
            uint16_t val = read_adc(i);
            if(val < sensor_min[i]) sensor_min[i] = val;
            if(val > sensor_max[i]) sensor_max[i] = val;
        }
        __delay_ms(15); 
        if(t % 10 == 0) LED = !LED; 
    }
    LED = 1; 
}

uint16_t read_adc(uint8_t channel) {
    ADCON0 &= 0xC7; ADCON0 |= (channel << 3);
    __delay_us(50); 
    GO_nDONE = 1;
    while (GO_nDONE);
    return (uint16_t)((ADRESH << 8) | ADRESL);
}

void set_motors(int16_t left_pwm, int16_t right_pwm) {
    // Left Motor (RC2=IN1/PWM, RC0=IN2/DIR)
    if (left_pwm >= 0) {
        L_MOTOR_DIR = 0; // Forward
        if (left_pwm > 255) left_pwm = 255;
        CCPR1L = (uint8_t)left_pwm;
    } else {
        L_MOTOR_DIR = 1; // Reverse
        left_pwm = -left_pwm;
        if (left_pwm > 255) left_pwm = 255;
        CCPR1L = (uint8_t)(255 - left_pwm);
    }
    
    // Right Motor (RC1=IN1/PWM, RC4=IN2/DIR)
    if (right_pwm >= 0) {
        R_MOTOR_DIR = 0; // Forward
        if (right_pwm > 255) right_pwm = 255;
        CCPR2L = (uint8_t)right_pwm;
    } else {
        R_MOTOR_DIR = 1; // Reverse
        right_pwm = -right_pwm;
        if (right_pwm > 255) right_pwm = 255;
        CCPR2L = (uint8_t)(255 - right_pwm);
    }
}
