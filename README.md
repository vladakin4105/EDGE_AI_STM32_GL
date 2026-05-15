# STM32 Edge AI: TinyML Environmental Anomaly Detection
 
An integrated Edge AI (TinyML) system built on a bare-metal architecture, designed for real-time environmental air quality monitoring and anomaly detection directly at the source. The system reads sensor data, runs a hybrid local machine learning model in under 1 ms, and reports data to the cloud via Ethernet.
 
Developed on the Global Logic Starter Kit (based on STM32F407VGTx) and presented at the Student Scientific Communications Session (SCSS) 2026.
 
---
 
## Table of Contents
 
- [Key Features](#key-features)
- [Hardware Requirements](#hardware-requirements)
- [Software and Toolchain](#software-and-toolchain)
- [Getting Started](#getting-started)
  - [1. Clone the Repository](#1-clone-the-repository)
  - [2. Configure Access Keys](#2-configure-access-keys-thingspeak)
  - [3. Compile the Project](#3-compile-the-project)
- [TinyML Model Architecture](#tinyml-model-architecture)
- [Note on the Ethernet Driver](#note-on-the-ethernet-driver-ksz8021rnl)
- [Contributions](#contributions)
---
 
## Key Features
 
- **Ultra-fast local inference:** A hybrid model (Neural Network Classifier + K-Means Anomaly Detection) trained in Edge Impulse, capable of making decisions in under 1 ms.
- **Low memory footprint:** The TinyML solution occupies only ~65 KB of Flash memory and ~5 KB of RAM.
- **Bare-metal Ethernet stack:** Custom implementation for the KSZ8021RNL PHY chip via RMII/MDIO, running the LwIP stack without a Real-Time Operating System (RTOS).
- **Cloud integration:** Asynchronous data transmission to the ThingSpeak API, strictly adhering to rate-limiting constraints (15-second intervals).
- **Local interface:** Real-time display on a 16x2 LCD and serial interface (USART3).
---
 
## Hardware Requirements
 
| Component | Details |
|---|---|
| Main Board | STM32F407VGTx (ARM Cortex-M4 with FPU) |
| Extension Kit | Global Logic Starter Kit v1.x |
| DHT11 Sensor | Temperature and humidity — Pin PD11, 1-Wire protocol via TIM6 |
| AGS10 Sensor | Total Volatile Organic Compounds (TVOC) — I2C1 Bus, pins PB6/PB7 |
| Ethernet PHY | KSZ8021RNL — RMII Bus, 100 Mbps |
 
---
 
## Software and Toolchain
 
| Tool / Technology | Role |
|---|---|
| STM32CubeIDE | Primary IDE with mixed C/C++ GCC support |
| LwIP | Lightweight TCP/IP stack |
| Edge Impulse SDK | TensorFlow Lite for Microcontrollers (ML inference) |
| C | Peripheral drivers, LwIP integration |
| C++ | ML model and inference engine |
 
---
 
## Getting Started
 
### 1. Clone the Repository
 
```bash
git clone https://github.com/your-username/STM32-Edge-AI-SCSS.git
cd STM32-Edge-AI-SCSS
```
 
### 2. Configure Access Keys (ThingSpeak)
 
Sensitive API credentials are stored in a git-ignored file named `secrets.h`. A template file named `secrets.example.h` is provided in the repository so that collaborators know which definitions are required without exposing private keys.
 
To set up your local credentials:
 
1. Navigate to the `Core/Inc/` directory.
2. Copy `secrets.example.h` and name the copy `secrets.h`. Leave the original `secrets.example.h` intact in the repository.
3. Open your newly created `secrets.h` and replace the placeholder with your actual ThingSpeak Write API key:
```c
#define THINGSPEAK_API_KEY "YOUR_API_KEY_HERE"
```
 
### 3. Compile the Project
 
The project has a hybrid C/C++ nature. Open STM32CubeIDE and import the folder as an existing project.
 
**Compiler settings:**
 
- Set the G++ compiler optimization flag to `-O3` or `-Os` (without LTO) to achieve optimal inference times.
**Extern C wrapper:**
 
To use the Edge Impulse C++ SDK within the auto-generated C environment provided by CubeMX, the inference function is exposed via an `extern "C"` wrapper declared in `app.cpp`. This allows the ML inference call to be made cleanly from C source files without linker conflicts.
 
---
 
## TinyML Model Architecture
 
The system addresses the problem of false-positive predictions by combining two complementary learning blocks:
 
**1. Neural Network Classifier**
 
Trained to recognize known environmental patterns (e.g., normal air quality, high TVOC, high humidity). Provides a labeled classification output on every inference cycle.
 
**2. K-Means Anomaly Detection**
 
Defines mathematical safety volumes around the normal operating state of the environment. If the K-Means score confirms adherence to a normal state (Anomaly Score < 0.5), any conflicting classification result from the neural network is invalidated. This two-stage decision mechanism provides a highly robust local verdict with no reliance on cloud connectivity.
 
The combined model occupies approximately 65 KB of Flash and 5 KB of RAM, making it well within the constraints of the STM32F407 target.
 
---
 
## Note on the Ethernet Driver (KSZ8021RNL)
 
The KSZ8021RNL PHY chip present on the Global Logic Starter Kit is not natively supported by the STM32CubeMX code generator. A custom initialization routine was therefore developed to bring up the RMII interface correctly.
 
The core of this routine involves accessing the proprietary register `0x1F` via the MDIO bus and setting bit 7 to HIGH. This activates the chip's internal PLL multiplier, which in turn generates the 50 MHz reference clock required by the STM32 MAC on the RMII interface.
 
This custom driver can serve as a reference for anyone attempting to bring up Ethernet connectivity on STM32 targets using the KSZ8021 PHY family without an RTOS.
 
---
 
## Contributions
 
This project was developed as an academic study and can serve as a starting point for:
 
- Implementing bare-metal Ethernet on STM32 microcontrollers with the KSZ8021RNL PHY and LwIP stack.
- Integrating Edge Impulse-generated C++ models into STM32CubeMX-generated C projects.
- Building hybrid TinyML pipelines that combine supervised classification with unsupervised anomaly detection.