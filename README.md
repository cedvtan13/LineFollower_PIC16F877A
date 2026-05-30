# Line Follower V2 - High-Speed PID Firmware

This directory contains the firmware for the V2 Line Follower robot using a **PIC16F877A** microcontroller and **DRV8871** motor drivers.

## 1. Hardware Specifications
- **MCU:** PIC16F877A @ 20MHz (HC-49 Crystal)
- **Motors:** 44k RPM DC Motors with 8:1 Gear Ratio
- **Drivers:** 2x DRV8871 (Independent PWM/Direction)
- **Sensors:** 8-Channel IR Reflectance Array (AN0-AN7)
- **Power:** 2S Li-Po (7.4V) with LM7805 Regulation for logic

## 2. Pinout Mapping

### Microcontroller (PIC16F877A)
| Pin | Function | Connection |
|-----|----------|------------|
| RA0 | AN0      | IR Sensor 1 (**Rightmost**) |
| RA1 | AN1      | IR Sensor 2 |
| RA2 | AN2      | IR Sensor 3 |
| RA3 | AN3      | IR Sensor 4 |
| RA5 | AN4      | IR Sensor 5 |
| RE0 | AN5      | IR Sensor 6 |
| RE1 | AN6      | IR Sensor 7 |
| RE2 | AN7      | IR Sensor 8 (**Leftmost**) |
| RC0 | Output   | Left Motor Direction (IN2) |
| RC1 | CCP2     | Right Motor PWM (IN1) |
| RC2 | CCP1     | Left Motor PWM (IN1) |
| RC4 | Output   | Right Motor Direction (IN2) |
| RD2 | Output   | LED Indicator (Active High) |
| RB0 | Input    | Push Button (Active High / Internal Pull-down) |

### Motor Control Logic (DRV8871)
| Mode | IN1 (PWM Pin) | IN2 (DIR Pin) |
|------|---------------|---------------|
| Forward | PWM | 0 |
| Reverse | 0 | PWM |
| Brake | 1 | 1 |

## 3. Operation Instructions

### Stage 1: Calibration
1. Power on the robot. The **LED will be Solid ON**.
2. Press the **Button (RB0)**.
3. The **LED will blink** for 3 seconds.
4. **Action:** Slide the robot side-to-side across the black line manually. Ensure every sensor passes over both the black line and the white background.
5. Calibration is complete when the **LED stays Solid ON** again.

### Stage 2: Running
1. Place the robot centered on the line.
2. Press the **Button (RB0)** again.
3. The **LED will turn OFF**, and the PID control loop will start.
4. The robot uses fixed-point math (x256 scaling) for high-speed responsiveness.

## 4. Tuning
The PID constants are located at the top of `pid_v2.c`:
- `KP_SCALED`: Proportional gain (Snap to line).
- `KD_SCALED`: Derivative gain (Damping/Stability).
- `BASE_SPEED`: Cruise speed (0-255).
- `HARD_TURN_THR`: Threshold for 90-degree corner pivot logic.

---
*Created by Gemini CLI - May 22, 2026*
