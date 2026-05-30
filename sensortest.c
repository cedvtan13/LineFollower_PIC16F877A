/*
 * File:   sensortest.c
 * Description: Sensor Mapping Test for 8-channel IR Array
 * Hardware: PIC16F877A, 20MHz
 * Logic: 
 *  - Blinks LED N times to indicate current sensor (1 blink = Sensor 0/AN0).
 *  - While waiting for button, if current sensor sees "Black", LED stays ON.
 *  - Press Button (RB0) to move to the next sensor.
 */

#include <xc.h>
#include <stdint.h>

// PIC16F877A Configuration
#pragma config FOSC = HS, WDTE = OFF, PWRTE = ON, BOREN = ON, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF
#define _XTAL_FREQ 20000000     

// Pin Definitions
#define LED          RD2
#define BUTTON       RB0

void init_hardware(void) {
    TRISA = 0xFF; // All Analog Inputs
    TRISE = 0x07; 
    TRISB = 0x01; // RB0 Input
    TRISD = 0x00; // RD Outputs
    
    ADCON1 = 0x80; // Right justified, All AN pins as analog
    ADCON0 = 0x81; // Fosc/32, Channel 0, ADC On
}

uint16_t read_adc(uint8_t channel) {
    ADCON0 &= 0xC7; 
    ADCON0 |= (channel << 3);
    __delay_us(50); 
    GO_nDONE = 1;
    while (GO_nDONE);
    return (uint16_t)((ADRESH << 8) | ADRESL);
}

void blink_count(uint8_t count) {
    for(uint8_t i = 0; i < count; i++) {
        LED = 1;
        __delay_ms(200);
        LED = 0;
        __delay_ms(200);
    }
}

void main(void) {
    init_hardware();
    uint8_t current_sensor = 0;

    while(1) {
        // 1. Signal which sensor we are testing (1 blink for AN0, 2 for AN1...)
        blink_count(current_sensor + 1);
        
        // 2. Interactive test mode
        while(BUTTON == 0) {
            uint16_t val = read_adc(current_sensor);
            // If sensor sees Black (High ADC value), turn LED ON
            if(val > 500) {
                LED = 1;
            } else {
                LED = 0;
            }
        }
        
        // 3. Debounce button and advance
        LED = 0;
        while(BUTTON == 1); // Wait for release
        __delay_ms(200);
        
        current_sensor++;
        if(current_sensor > 7) current_sensor = 0;
    }
}
