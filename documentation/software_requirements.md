# System Requirement Scope Summary
### Feature 1: Touch Screen Capability
### Feature 2: Personal Docking Station
### Feature 3: Automated Drawer Opener
### Feature 4: Automated Workbench Light
### Feature 5: Pomodoro Timer
### Feature 6: Ruler Mode
### Feature 7: AAA Battery Tester

***Verification Methods: Inspection, Demonstration, Test, or Analysis***

# Functional Requirements
Feature 1: Touch Screen Capability
| Description of Requirement                                           | Expected Value           | Importance | Compliance Verification Method |
| -------------------------------------------------------------------- | ------------------------ | ---------- | ------------------------------ |
| Must be able to use touch screen for smart bench UI (UI Touch Interface) | Successful touch recognition | High       | TFT Touch Unit Test           |
| Must be able to use touch screen for smart bench UI (UI Touch Interface) | Successful display rendering | High       | TFT Display Unit Test         |

**Table X: This table depicts the functional requirements of feature 1, which is touchscreen capability.**

# Feature 2: Personal Docking Station
| Description of Requirement                                            | Expected Value     | Importance | Compliance Verification Method |
| --------------------------------------------------------------------- | -------------------| ---------- | ------------------------------ |
| Must be able to set current time and date upon startup (UI Touch Interface) | Display Time/Date | High       | RTC Unit Time Test             |
| Must be able to see accurate temperature data on the screen live (UI Display Interface). | Display Temperature Live | High       | HTS221 Temp Unit Test          |
| Must be able to see accurate humidity data on the screen live (UI Display Interface). | Display Humidity Live | High       | HTS221 Hum Unit Test           |

**Table X: This table depicts the functional requirements of feature 2, which is personal docking station management.**

# Feature 3: Automated Drawer Opener
| Description of Requirement                                             | Expected Value | Importance | Compliance Verification Method |
| ---------------------------------------------------------------------- | ---------------| ---------- | ------------------------------ |
| Must supply external 12V Source to DC geared motor.                    | 12 V DC        | High       | Multimeter Testing             |
| Must be using TB6612FNG DC Motor driver custom shield to actuate the drawer operation through PWM control | 100 (Hz)       | High       | Motor Driver Unit Test         |
| Must be able to open cabinet drawer using touch screen interface (UI Touch Interface) | Drawer opens/closes | High       | Manual Test                    |
| Must be able to open cabinet drawer using VL5310x time of flight sensor. | Drawer opens/closes | High       | Vl5310x Distance Unit Test     |

**Table X: This table depicts the functional requirements of feature 3, which is workbench drawer management.**
# Feature 4: Workbench Light Management
| Description of Requirement                                             | Expected Value | Importance | Compliance Verification Method |
| ---------------------------------------------------------------------- | ---------------| ---------- | ------------------------------ |
| Must supply external 24V power source to relay shield     |24 V DC       | High       | Multimeter Testing    |
| Must be able to control onboard relay’s using the stm32 development board. | High/Low       | High       | GPIO Unit Testing              |
| Must be able to turn on light using VL5310x time of flight sensor proximity detection. | Light turns ON/OFF | High       | Vl5310x Proximity Unit Test    |

**Table X: This table depicts the functional requirements of feature 4, which is workbench light management.**

# Feature 5: Pomodoro Focus Counter
| Description of Requirement                                             | Expected Value | Importance | Compliance Verification Method |
| ---------------------------------------------------------------------- | ---------------| ---------- | ------------------------------ |
| Must have an accurate timer that is within tolerance of 1% accuracy.     |  +/- 1 sec       | High       | Smart Phone Timer comparison Analysis    |
| Must be able to configure amount of time set by user. | User Definition       | High       | TIMER Unit Testing              |
|

**Table X: This table depicts the functional requirements of feature 4, which is workbench light management.**
# Feature 6: Ruler Mode
| Description of Requirement                                             | Expected Value | Importance | Compliance Verification Method |
| ---------------------------------------------------------------------- | ---------------| ---------- | ------------------------------ |
| Must be able to switch between proximity mode and ruler mode.  | UI confirmation       | High       | UI Switch Unit Demo     |
| Must be able to read distances within tolerance. | Ranging Accuracy Tolerance   | High       | Vl5310x Accuracy Range Unit Analysis   |
|

**Table X: This table depicts the functional requirements of feature 4, which is ruler mode. Ranging accuracy refers to the specification provided by the sensor manufacturer.**

# Feature 7: Battery Tester
| Description of Requirement                                             | Expected Value | Importance | Compliance Verification Method |
| ---------------------------------------------------------------------- | ---------------| ---------- | ------------------------------ |
| Must be able to go to battery testing mode.  | UI confirmation       | High       | UI confirmation Unit Demo     |
| Must be able to read AAA battery voltage using ADC. | Extern. DMM voltage reading  | High       | ADC and Multimeter Comparison Unit Demo   |
| Must be able to read AAA battery voltage accurately. | ADC resolution and accuracy tolerance   | High       | ADC Unit Testing   |
|

**Table X: This table depicts the functional requirements of feature 7, which is the battery tester.**

