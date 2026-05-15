# STM32 Edge AI: TinyML Environmental Anomaly Detection 🌱🤖

Acest proiect reprezintă un sistem integrat de tip **Edge AI (TinyML)** construit pe o arhitectură bare-metal, destinat monitorizării calității aerului și detecției anomaliilor de mediu direct la sursă. Sistemul citește date de la senzori, rulează un model hibrid de Machine Learning local (în sub 1 ms) și raportează datele în cloud via Ethernet.

Proiectul a fost dezvoltat pe **Global Logic Starter Kit** (bazat pe STM32F407VGTx) și a fost prezentat la Sesiunea de Comunicări Științifice Studențești (SCSS) 2026.

## 🚀 Funcționalități Principale
* **Inferență Locală Ultra-Rapidă:** Un model hibrid (Neural Network Classifier + K-Means Anomaly Detection) antrenat în Edge Impulse, capabil să ia decizii în **1 ms**.
* **Amprentă de Memorie Redusă:** Soluția TinyML ocupă doar ~65 KB memorie Flash și ~5 KB RAM.
* **Stivă Ethernet Bare-Metal:** Implementare custom pentru cipul PHY **KSZ8021RNL** via RMII/MDIO, rulând stiva LwIP fără un sistem de operare (RTOS).
* **Cloud Integration:** Transmitere de date asincronă către API-ul **ThingSpeak**, respectând restricțiile de rate-limiting (15s).
* **Interfață Locală:** Afișare în timp real pe un display LCD 16x2 și prin interfață serială (USART3).

## 🛠️ Hardware Utilizat
* **Placă de bază:** Microcontroler STM32F407VGTx (ARM Cortex-M4 cu FPU).
* **Kit Extensie:** Global Logic Starter Kit v1.x.
* **Senzor DHT11:** Pentru temperatură și umiditate (Pin PD11 - Protocol 1-Wire via TIM6).
* **Senzor AGS10:** Pentru detectarea compușilor organici volatili totali / TVOC (Magistrala I2C1 - PB6, PB7).
* **Ethernet:** Cip PHY KSZ8021RNL (Magistrala RMII 100 Mbps).

## 💻 Software & Toolchain
* **IDE:** STM32CubeIDE (suport mixt C/C++ GCC).
* **Stivă TCP/IP:** LwIP (Lightweight IP).
* **Machine Learning:** Edge Impulse SDK (TensorFlow Lite for Microcontrollers).
* **Limbaje:** C (pentru drivere și LwIP), C++ (pentru modelul ML), Python (scripturi pentru generare dataset).