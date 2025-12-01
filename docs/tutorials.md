---
layout: default
title: Tutorials & Guides
parent: Documentation
nav_order: 6
---

# Tutorials & Step-by-Step Guides

Detailed tutorials and build guides for my projects, published on Instructables.

**Profile:** [binova on Instructables](https://www.instructables.com/member/binova/instructables/)  
**Total Views:** 62,375+ | **Followers:** 19

---

## 📚 Featured Tutorials

### 1. How to Make a Data Logger for Temperature, pH, and Dissolved Oxygen

The most popular guide with detailed instructions for building a complete environmental monitoring system.

**📊 Stats:** 11,000+ views | 48 favorites

**What You'll Learn:**
- Temperature sensor integration (DS18B20)
- pH sensor calibration and reading
- Dissolved oxygen monitoring
- SD card data logging
- LCD display integration
- Real-time clock setup

**Components:**
- Arduino board
- DS18B20 temperature sensor
- pH sensor module
- Dissolved oxygen sensor
- SD card module
- RTC (Real-Time Clock)
- LCD display

**🔗 View Full Tutorial:** [Instructables Guide →](https://www.instructables.com/How-to-Make-a-Data-Logger-for-the-Temperature-PH/)

**📦 Related Repository:** [advanced-bioreactor](https://github.com/bio-info/advanced-bioreactor)

---

### 2. PIR With ESP8266 and MQTT

Learn how to create a motion sensor system using ESP8266 that communicates via MQTT protocol.

**📊 Stats:** 17,000+ views | 8 favorites

**What You'll Learn:**
- ESP8266 WiFi setup
- PIR motion sensor integration
- MQTT protocol basics
- Publishing sensor data to MQTT broker
- Low-power operation techniques

**Key Features:**
- WiFi connectivity
- MQTT messaging
- Motion detection
- Remote monitoring capability

**🔗 View Full Tutorial:** [Instructables Guide →](https://www.instructables.com/PIR-With-ESP8266-and-MQTT/)

**📦 Related Repository:** [arduinos](https://github.com/bio-info/arduinos)

---

### 3. Set Up From Scratch: Raspberry Pi to Log Data From Arduino

Complete guide for setting up a Raspberry Pi as a data logging server for Arduino sensors.

**📊 Stats:** 11,000+ views | 14 favorites

**What You'll Learn:**
- Raspberry Pi initial setup
- Serial communication between Arduino and Pi
- Python scripts for data logging
- Database setup (MySQL/SQLite)
- Automated data collection
- Web interface for viewing data

**System Architecture:**
- Arduino → Serial → Raspberry Pi → Database → Web Interface

**🔗 View Full Tutorial:** [Instructables Guide →](https://www.instructables.com/Set-Up-From-Scratch-a-Raspberry-Pi-to-Log-Data-Fr/)

**📦 Related Repository:** [arduinos](https://github.com/bio-info/arduinos)

---

### 4. Weather Station: ESP8266 With Deep Sleep, SQL, Graphing by Flask & Plotly

Build a complete IoT weather station with data visualization.

**📊 Stats:** 5,300+ views | 4 favorites

**What You'll Learn:**
- ESP8266 deep sleep for battery operation
- DHT22 temperature and humidity sensor
- Light sensor integration
- MQTT data transmission
- SQL database storage
- Flask web server setup
- Plotly for interactive graphs
- Data visualization techniques

**Key Features:**
- Battery-powered operation
- WiFi connectivity
- Real-time graphing
- Historical data storage
- Responsive web interface

**🔗 View Full Tutorial:** [Instructables Guide →](https://www.instructables.com/Weather-Station-ESP8266-With-Deep-Sleep-SQL-Graph/)

**📦 Related Repository:** [weatherstation](https://github.com/bio-info/weatherstation)

---

### 5. From Flashlight to Motion Sensor With ESP8266 and MQTT

Creative reuse project: Converting a flashlight into a smart motion sensor.

**📊 Stats:** 6,100+ views | 23 favorites

**What You'll Learn:**
- Repurposing existing hardware
- ESP8266 integration in compact spaces
- PIR sensor wiring
- MQTT home automation
- Battery power management
- 3D printing custom enclosures (optional)

**Perfect For:**
- Home automation
- Security applications
- Energy-efficient lighting
- DIY smart home projects

**🔗 View Full Tutorial:** [Instructables Guide →](https://www.instructables.com/From-Flashlight-to-Motion-Sensor-With-ESP8266-and/)

**📦 Related Repository:** [arduinos](https://github.com/bio-info/arduinos)

---

### 6. A Simple Turbidity Monitor and Control System for Microalgae

Automated system for monitoring and controlling microalgae growth in bioreactors.

**📊 Stats:** 5,500+ views | 11 favorites

**What You'll Learn:**
- Turbidity sensor design and calibration
- Light intensity monitoring
- Automated turbidostat operation
- Culture density control
- Arduino control algorithms
- Data logging for biological systems

**Applications:**
- Microalgae cultivation
- Water quality monitoring
- Bioreactor automation
- Research and education

**🔗 View Full Tutorial:** [Instructables Guide →](https://www.instructables.com/A-Simple-Turbidity-Monitor-and-Control-System-for/)

**📦 Related Repository:** [advanced-bioreactor](https://github.com/bio-info/advanced-bioreactor)

---

### 7. Control High-Powered LED Panel by Arduino

Real-time LED control system with data logging and luminosity sensing.

**📊 Stats:** 4,200+ views | 44 favorites

**What You'll Learn:**
- High-power LED driver circuits
- PWM dimming control
- Light intensity measurement
- LCD display integration
- SD card data logging
- Real-time control algorithms
- Simulating natural sunlight patterns

**Features:**
- Adjustable light intensity
- Programmable light schedules
- Temperature monitoring
- Energy efficiency tracking

**🔗 View Full Tutorial:** [Instructables Guide →](https://www.instructables.com/Control-High-powered-LED-Panel-by-Arduino-Real-Tim/)

**📦 Related Repository:** [advanced-bioreactor](https://github.com/bio-info/advanced-bioreactor)

---

## 🎯 Tutorial Topics Overview

### By Difficulty Level

**Beginner:**
- PIR With ESP8266 and MQTT
- From Flashlight to Motion Sensor

**Intermediate:**
- Weather Station with ESP8266
- Set Up Raspberry Pi Data Logger
- Control High-Powered LED Panel

**Advanced:**
- Data Logger (Temperature, pH, DO)
- Turbidity Monitor for Microalgae

### By Category

**IoT & Wireless:**
- PIR With ESP8266 and MQTT
- Weather Station with Deep Sleep
- From Flashlight to Motion Sensor

**Data Logging:**
- Temperature/pH/DO Data Logger
- Raspberry Pi Logger
- LED Control with Data Logging

**Environmental Monitoring:**
- Weather Station
- Data Logger (Temperature, pH, DO)
- Turbidity Monitor for Microalgae

**Automation & Control:**
- Turbidity Monitor (Turbidostat)
- High-Powered LED Control
- Motion Sensor Projects

---

## 🛠️ Common Components Across Projects

### Microcontrollers
- **Arduino** (Uno, Nano, Mega)
- **ESP8266** (NodeMCU, Wemos D1 Mini)
- **Raspberry Pi** (all models)

### Sensors
- **Temperature:** DS18B20, DHT22
- **Humidity:** DHT22
- **pH:** Analog pH sensor
- **Dissolved Oxygen:** DO sensor
- **Motion:** PIR sensor (HC-SR501)
- **Light:** Photoresistor, BH1750
- **Turbidity:** Custom optical sensor

### Communication
- **WiFi:** ESP8266 built-in
- **MQTT:** Mosquitto broker
- **Serial:** Arduino ↔ Raspberry Pi
- **I2C/SPI:** Sensor interfaces

### Data Storage
- **SD Card:** Local logging
- **SQL Database:** MySQL, SQLite
- **Cloud:** MQTT brokers

---

## 📖 How to Use These Tutorials

### 1. Choose Your Project
Browse the tutorials above and select one that matches your interest and skill level.

### 2. Gather Components
Each Instructables guide includes a complete parts list with links to components.

### 3. Follow Step-by-Step
Detailed instructions with photos and code snippets guide you through the build.

### 4. Get the Code
Download complete code from the linked GitHub repositories.

### 5. Customize
Adapt the projects to your specific needs using the provided code as a foundation.

---

## 💡 Why These Tutorials?

### Practical Applications
- **Real-world problems:** Air quality, water monitoring, energy efficiency
- **Research-grade:** Used in actual environmental monitoring projects
- **Educational:** Perfect for learning electronics and programming

### Comprehensive Guides
- **Detailed instructions:** Step-by-step with photos
- **Complete code:** Fully documented and tested
- **Bill of materials:** Exact components with sources
- **Troubleshooting:** Common issues and solutions

### Open Source
- **Free to use:** All code and designs are open source
- **Community support:** Active community on Instructables
- **Continuous improvement:** Regular updates based on feedback

---

## 🌟 Community Recognition

### Statistics
- **Total Tutorial Views:** 62,375+
- **Total Favorites:** 163
- **Followers:** 19
- **Comments & Questions:** Active community engagement

### Most Popular
1. **PIR With ESP8266 and MQTT** - 17,000+ views
2. **Temperature/pH/DO Data Logger** - 11,000+ views
3. **Raspberry Pi Data Logger** - 11,000+ views

---

## 🔗 Additional Resources

### On Instructables
- [binova's Profile](https://www.instructables.com/member/binova/instructables/)
- [All Tutorials](https://www.instructables.com/member/binova/instructables/)
- [Discussions & Q&A](https://www.instructables.com/member/binova/)

### On GitHub
- [GitHub Profile](https://github.com/bio-info)
- [All Repositories](https://github.com/bio-info?tab=repositories)
- [Project Documentation](https://github.com/bio-info)

### On This Site
- [Projects Showcase](/docs/projects.html)
- [Code Examples](/code/)
- [GitHub Integration Guide](/docs/github-references.html)

---

## 📬 Questions & Support

### Got Questions?
- **Instructables:** Comment on the specific tutorial
- **GitHub:** Open an issue in the relevant repository
- **General:** Contact through GitHub profile

### Want to Contribute?
- Fork the repositories
- Submit pull requests
- Share your modifications
- Help others in the community

---

## 🎓 Learning Path Suggestion

If you're new to these topics, here's a recommended learning path:

**Level 1: Start Simple**
1. PIR With ESP8266 and MQTT
2. From Flashlight to Motion Sensor

**Level 2: Add Complexity**
3. Weather Station with ESP8266
4. Control High-Powered LED Panel

**Level 3: Advanced Systems**
5. Set Up Raspberry Pi Data Logger
6. Temperature/pH/DO Data Logger
7. Turbidity Monitor for Microalgae

Each project builds on skills from previous ones! 🚀

---

## 📊 Project Comparison

| Tutorial | Views | Difficulty | Time | Cost | Best For |
|----------|-------|------------|------|------|----------|
| PIR + ESP8266 | 17K | Beginner | 2-3h | $15 | Home automation |
| Data Logger | 11K | Advanced | 6-8h | $50 | Research |
| Raspberry Pi | 11K | Intermediate | 4-5h | $60 | Data collection |
| Weather Station | 5.3K | Intermediate | 3-4h | $25 | IoT learning |
| Flashlight Mod | 6.1K | Beginner | 2h | $10 | Quick project |
| Turbidity Monitor | 5.5K | Advanced | 5-6h | $40 | Bioreactors |
| LED Control | 4.2K | Intermediate | 4-5h | $35 | Lighting |

---

Happy building! 🔧⚡🌱

