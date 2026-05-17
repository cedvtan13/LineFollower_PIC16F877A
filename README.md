# Line Follower Robot V2 - Technical Documentation

## 1. Hardware Overview

| Component          | Specification                                         |
|--------------------|-------------------------------------------------------|
| **Microcontroller**| PIC16F877A (40-pin PDIP)                              |
| **Oscillator**     | 20 MHz Crystal with 22pF Load Capacitors (HS Mode)    |
| **Sensors**        | 8x IR Sensors (Analog) spaced 9mm centre-to-centre     |
| **Motor Drivers**  | 2x DRV8871 (PWM Speed + Direction Control)            |
| **Power Supply**   | 5V DC (Regulated)                                     |
| **User Interface** | 1x Push Button (RB0), 1x Status LED (RD2)             |

---

## 2. Pin Assignment Table

| Pin | Name          | Function / Connection                                                                 |
|-----|---------------|--------------------------------------------------------------------------------------|
| 1   | MCLR/VPP      | ICSP MCLR / 10kΩ Pull-up to VDD                                                      |
| 2   | RA0/AN0       | **IR Sensor 1** (Analog)                                                             |
| 3   | RA1/AN1       | **IR Sensor 2** (Analog)                                                             |
| 4   | RA2/AN2       | **IR Sensor 3** (Analog)                                                             |
| 5   | RA3/AN3       | **IR Sensor 4** (Analog)                                                             |
| 7   | RA5/AN4       | **IR Sensor 5** (Analog)                                                             |
| 8   | RE0/AN5       | **IR Sensor 6** (Analog)                                                             |
| 9   | RE1/AN6       | **IR Sensor 7** (Analog)                                                             |
| 10  | RE2/AN7       | **IR Sensor 8** (Analog)                                                             |
| 11  | VDD           | +5V Power (Decoupled with 100nF)                                                     |
| 12  | VSS           | GND                                                                                  |
| 13  | OSC1          | **20 MHz Crystal** + 22pF Capacitor to GND                                           |
| 14  | OSC2          | **20 MHz Crystal** + 22pF Capacitor to GND                                           |
| 15  | RC0           | **Left Motor IN2** (Direction - Digital Output)                                      |
| 16  | RC1/CCP2      | **Right Motor IN1** (PWM Speed - CCP2)                                               |
| 17  | RC2/CCP1      | **Left Motor IN1** (PWM Speed - CCP1)                                                |
| 21  | RD2           | **Status LED** (Active High via 330Ω)                                                |
| 23  | RC4           | **Right Motor IN2** (Direction - Digital Output)                                     |
| 31  | VSS           | GND                                                                                  |
| 32  | VDD           | +5V Power                                                                            |
| 33  | RB0/INT       | **User Button** (Active High with 10kΩ Pull-down)                                    |
| 39  | RB6/PGC       | ICSP PGC                                                                             |
| 40  | RB7/PGD       | ICSP PGD                                                                             |

---

## 3. Subsystem Details

### 3.1 Motor Control Logic (DRV8871)
The robot uses a mixed PWM/Digital control strategy to achieve bidirectional speed control using only two hardware PWM channels.

*   **Speed Control (Hardware PWM):** RC2 (`CCP1`) for Left Motor, RC1 (`CCP2`) for Right Motor.
*   **Direction Control (Digital):** RC0 for Left Motor, RC4 for Right Motor.

| Movement | Left IN1 (RC2 - PWM) | Left IN2 (RC0 - Digital) | Right IN1 (RC1 - PWM) | Right IN2 (RC4 - Digital) |
| :--- | :--- | :--- | :--- | :--- |
| **Forward** | **Inv. PWM** (255-speed) | **1** (HIGH) | **Inv. PWM** (255-speed) | **1** (HIGH) |
| **Backward** | **Normal PWM** (speed) | **0** (LOW) | **Normal PWM** (speed) | **0** (LOW) |
| **Brake** | 1 (HIGH) | 1 (HIGH) | 1 (HIGH) | 1 (HIGH) |
| **Coast** | 0 (LOW) | 0 (LOW) | 0 (LOW) | 0 (LOW) |

**Note:** Hardware PWM is only present on RC1 and RC2. By toggling the direction pins (RC0/RC4) and appropriately inverting the PWM signal, we achieve full speed control in both directions without needing four dedicated PWM channels.

### 3.2 User Button (RB0)
The button handles multiple states:
- **Short Press:** Start/Stop the robot.
- **Long Press (3s):** Trigger sensor calibration (LED flashes rapidly).

### 3.3 Sensor Array
8 Analog sensors (AN0-AN7) provide granular line position data.
- **Normalization:** Values are scaled post-calibration.
- **Sample Rate:** Recommended 1kHz sampling for stable PID control.

---

## 4. Electrical Notes

### Oscillator Setup
The 20MHz crystal requires **HS (High Speed)** mode in configuration bits. The 22pF capacitors should be placed as close to pins 13 and 14 as possible to minimize stray capacitance.

### Button Circuit (Active High)
Ensure the 10kΩ pull-down is present, as RB0 does not have internal pull-downs on this model.

---

## 5. Development Progress (May 16, 2026)

### 5.1 System Architecture Upgrades
- **Clock Speed:** Upgraded from 16MHz to **20MHz** crystal.
- **PWM Optimization:** Increased PWM frequency to **19.53 kHz** (Ultrasonic) to eliminate motor driver whining noise.
- **Motor Control Logic:** Software inversion implemented to handle physical wiring orientation (DIR=1 for Forward).

### 5.2 Sensor & Control Logic
- **Analog Weighted Average (Centroid):** Upgraded from binary thresholding to a high-precision weighted average calculation. Error is now calculated as a centroid of all active sensors, normalized to 0-1000 range per sensor, providing sub-millimeter position resolution.
- **PD Controller:** Implemented a Proportional-Derivative controller tuned for high-inertia **44,000 RPM motors**.
- **Steering Correction:** Fixed a bug where steering was reversed relative to line position.
- **Soft-Center Logic:** Implemented a dynamic gain reduction zone (+/- 15 error) to prevent high-speed oscillations on straight track sections.

### 5.3 Safety & Reliability
- **Line Memory:** Robot tracks the last known line position to determine spin direction during overshoots.
- **Safety Timeout:** Automatic motor cut-off if the line is lost for more than **500ms**.
- **Startup Protection:** Forced motor braking during power-on and initialization to prevent accidental "kicks."

---

## 7. Development Progress (May 17, 2026) - The "Great PID Polishing"

### 7.1 Challenge: Sensor Noise & "Ghost Lines"
- **The Issue:** Transitioning to full Analog Centroid logic initially made the robot too sensitive. It began tracking reflections and surface glint on the tarpaulin, leading to unpredictable "ghost line" following and erratic steering.
- **The Solution:** Implemented a robust **Signal Confidence** threshold (`sum_vals > 800`). The robot now ignores any signal weaker than approximately one full sensor's intensity. We also added a per-sensor noise floor and a calibration guard to ignore "blind" or low-contrast sensors.

### 7.2 Challenge: Center-Line Jitter
- **The Issue:** High-frequency motor jitter occurred even when centered, caused by tiny ADC fluctuations being amplified by the Derivative gain (`Kd`).
- **The Solution:** 
  - **Deadband Logic:** Implemented a +/- 3.0 error deadband where micro-corrections are ignored.
  - **Derivative Filtering:** Added a first-order Low-Pass Filter on the derivative term (`filtered_derivative`) to smooth out sensor spikes while maintaining low-latency response.

### 7.3 Challenge: Wide Post-Corner Oscillations
- **The Issue:** Aggressive attempts to dampen corners led to "hunting" oscillations that would worsen over time. This was identified as a "phase-lag" issue where high damping and loop delays were fighting the robot's physical inertia.
- **The Solution:** 
  - **Stability Retreat:** Rescaled the base PID gains to a more conservative baseline (`Kp=1.8`, `Kd=25.0`).
  - **Loop Timing:** Reduced loop delay from `800us` to `200us`, significantly increasing the sampling frequency to allow for lower gains with higher precision.
  - **Linear Gain Ramp:** Replaced hard threshold gain scaling with a smooth linear ramp to prevent "snapping" transitions between straight and cornering modes.

### 7.4 Challenge: Sluggish Recovery
- **The Issue:** The search speed during line loss was too slow, leading to the robot drifting too far before it could pivot back.
- **The Solution:** Increased `RECOVERY_SPEED` to `75` and implemented an **Active Inertia Brake**. Upon line loss, the motors provide a hard `8ms` reverse pulse to kill forward momentum before beginning the high-speed pivot search.

---

## 8. Final Configuration (Stable Milestone)

| Parameter           | Value | Description                                  |
|---------------------|-------|----------------------------------------------|
| **Kp**              | 1.8   | Proportional Gain (Responsive but calm)      |
| **Kd**              | 25.0  | Derivative Gain (High damping transition)    |
| **Deadband**        | 3.0   | Center-line "Quiet Zone"                     |
| **Recovery Speed**  | 75    | High-torque pivot for search                 |
| **Brake Pulse**     | 8ms   | Inertia-killing reverse pulse                |
| **Loop Frequency**  | ~5kHz | High-speed sampling (200us delay)            |

---

## 6. Track Specifications

| Feature          | Specification                                         |
|------------------|-------------------------------------------------------|
| **Line Width**   | 4.0 cm                                                |
| **Colors**       | Black Line on White Background                        |
| **Material**     | Tarpaulin                                             |
| **Checkpoints**  | Multiple specified points; reset allowed with penalty |

### 6.1 Path Types
- **Straight line:** High-speed section.
- **Curved line:** Standard line following.
- **Angled turn:** Requires responsive PD control.
- **Broken line:** Requires firmware to maintain forward drive during gaps.
- **Hairpin turn:** Requires aggressive high-torque steering recovery.
