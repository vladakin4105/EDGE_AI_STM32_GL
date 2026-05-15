# STM32 Edge AI: TinyML Environmental Anomaly Detection

This project represents an integrated Edge AI (TinyML) system built on a bare-metal architecture, designed for real-time environmental air quality monitoring and anomaly detection directly at the source. The system reads sensor data, runs a hybrid local Machine Learning model (under 1 ms), and reports the data to the cloud via Ethernet.

The project was developed on the Global Logic Starter Kit (based on STM32F407VGTx) and was presented at the Student Scientific Communications Session (SCSS) 2026.

## Key Features
* **Ultra-Fast Local Inference:** A hybrid model (Neural Network Classifier + K-Means Anomaly Detection) trained in Edge Impulse, capable of making decisions in 1 ms.
* **Low Memory Footprint:** The TinyML solution occupies only ~65 KB of Flash memory and ~5 KB of RAM.
* **Bare-Metal Ethernet Stack:** Custom implementation for the KSZ8021RNL PHY chip via RMII/MDIO, running the LwIP stack without a Real-Time Operating System (RTOS).
* **Cloud Integration:** Asynchronous data transmission to the ThingSpeak API, strictly adhering to rate-limiting constraints (15-second intervals).
* **Local Interface:** Real-time display on a 16x2 LCD and serial interface (USART3).

## Hardware Requirements
* **Main Board:** STM32F407VGTx Microcontroller (ARM Cortex-M4 with FPU).
* **Extension Kit:** Global Logic Starter Kit v1.x.
* **DHT11 Sensor:** For temperature and humidity (Pin PD11 - 1-Wire Protocol via TIM6).
* **AGS10 Sensor:** For Total Volatile Organic Compounds (TVOC) detection (I2C1 Bus - PB6, PB7).
* **Ethernet:** KSZ8021RNL PHY Chip (RMII Bus 100 Mbps).

## Software & Toolchain
* **IDE:** STM32CubeIDE (mixed C/C++ GCC support).
* **TCP/IP Stack:** LwIP (Lightweight IP).
* **Machine Learning:** Edge Impulse SDK (TensorFlow Lite for Microcontrollers).
* **Languages:** C (for drivers and LwIP), C++ (for the ML model), Python (dataset generation scripts).