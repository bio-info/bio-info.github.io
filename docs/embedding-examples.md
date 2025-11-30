---
layout: default
title: Embedding Code Examples
parent: Documentation
nav_order: 5
---

# Embedding Code from Your GitHub Repositories

This guide shows practical examples of how to embed and reference code from your GitHub repositories in your documentation.

---

## Example 1: Arduino Bioreactor Code

### Referencing with Link

You can reference specific files from your repositories:

```markdown
The pH sensor code is available in the [bioreactor.ino](https://github.com/bio-info/advanced-bioreactor/blob/main/bioreactor.ino) file.
```

### Embedding Code Snippet

Copy relevant sections from your GitHub repos:

```cpp
// From: https://github.com/bio-info/advanced-bioreactor
// pH Sensor Reading Function

float readPH() {
  int sensorValue = analogRead(PH_PIN);
  float voltage = sensorValue * (5.0 / 1024.0);
  float pH = 3.5 * voltage + CALIBRATION_OFFSET;
  return pH;
}

void logData(float pH, float temp) {
  Serial.print("pH: ");
  Serial.print(pH);
  Serial.print(" | Temp: ");
  Serial.println(temp);
  
  // Save to SD card
  dataFile.print(millis());
  dataFile.print(",");
  dataFile.print(pH);
  dataFile.print(",");
  dataFile.println(temp);
}
```

**Source:** [View full code on GitHub →](https://github.com/bio-info/advanced-bioreactor/blob/main/bioreactor.ino)

---

## Example 2: Python Air Quality Analysis

### PM2.5 Data Analysis

From your air-quality-analysis repository:

```python
# Source: https://github.com/bio-info/air-quality-analysis
# PM2.5 Data Analysis

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def analyze_pm25_trends(data_file):
    """
    Analyze PM2.5 trends from sensor data
    
    Args:
        data_file: Path to CSV file with PM2.5 measurements
    
    Returns:
        DataFrame with statistical summary
    """
    # Load data
    df = pd.read_csv(data_file)
    df['timestamp'] = pd.to_datetime(df['timestamp'])
    
    # Calculate daily averages
    daily_avg = df.groupby(df['timestamp'].dt.date)['pm25'].mean()
    
    # Statistical summary
    stats = {
        'mean': df['pm25'].mean(),
        'median': df['pm25'].median(),
        'std': df['pm25'].std(),
        'max': df['pm25'].max(),
        'days_above_who_limit': (daily_avg > 25).sum()
    }
    
    return pd.DataFrame([stats])

# Visualization function
def plot_pm25_timeseries(df):
    plt.figure(figsize=(12, 6))
    plt.plot(df['timestamp'], df['pm25'], label='PM2.5', alpha=0.7)
    plt.axhline(y=25, color='r', linestyle='--', label='WHO 24h Limit')
    plt.xlabel('Time')
    plt.ylabel('PM2.5 (μg/m³)')
    plt.title('PM2.5 Concentration Over Time')
    plt.legend()
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig('pm25_timeseries.png', dpi=300)
```

**Explore more:** [View Jupyter notebooks →](https://github.com/bio-info/air-quality-analysis/tree/main/notebooks)

---

## Example 3: ESP8266 Weather Station Code

### MQTT Data Transmission

```cpp
// Source: https://github.com/bio-info/weatherstation
// ESP8266 Weather Station - MQTT Client

#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <DHT.h>

#define DHTPIN D4
#define DHTTYPE DHT22

const char* ssid = "YOUR_WIFI";
const char* password = "YOUR_PASSWORD";
const char* mqtt_server = "broker.hivemq.com";

DHT dht(DHTPIN, DHTTYPE);
WiFiClient espClient;
PubSubClient client(espClient);

void publishSensorData() {
  float temp = dht.readTemperature();
  float humidity = dht.readHumidity();
  int light = analogRead(A0);
  
  if (isnan(temp) || isnan(humidity)) {
    Serial.println("Failed to read from DHT sensor!");
    return;
  }
  
  // Create JSON payload
  String payload = "{\"temperature\":" + String(temp) + 
                   ",\"humidity\":" + String(humidity) +
                   ",\"light\":" + String(light) + "}";
  
  // Publish to MQTT topic
  client.publish("weather/station/data", payload.c_str());
  
  Serial.println("Data published: " + payload);
}

void setup() {
  Serial.begin(115200);
  dht.begin();
  
  // Connect to WiFi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  
  // Connect to MQTT
  client.setServer(mqtt_server, 1883);
}

void loop() {
  if (!client.connected()) {
    reconnect();
  }
  client.loop();
  
  publishSensorData();
  delay(60000); // Send data every minute
}
```

**Complete implementation:** [View on GitHub →](https://github.com/bio-info/weatherstation)

---

## Example 4: Linking to Datasets

### Reference CSV Data Files

You can link directly to raw data files:

```markdown
Download sample PM2.5 dataset:
[hanoi_pm25_2024.csv](https://raw.githubusercontent.com/bio-info/air-quality-analysis/main/data/hanoi_pm25_2024.csv)
```

### Embed Data Tables

Show sample data in tables:

| Timestamp | PM2.5 (μg/m³) | Temperature (°C) | Humidity (%) |
|-----------|---------------|------------------|--------------|
| 2024-01-01 00:00 | 45.2 | 18.5 | 75 |
| 2024-01-01 01:00 | 52.8 | 18.2 | 78 |
| 2024-01-01 02:00 | 48.6 | 18.0 | 80 |

**Full dataset:** [Download →](https://raw.githubusercontent.com/bio-info/air-quality-analysis/main/data/sample.csv)

---

## Example 5: Interactive Jupyter Notebooks

### Linking to Notebooks

```markdown
View the complete analysis in Jupyter Notebook:
- [PM2.5 Analysis Notebook](https://github.com/bio-info/air-quality-analysis/blob/main/notebooks/pm25_analysis.ipynb)
- [Sensor Calibration](https://github.com/bio-info/air-quality-analysis/blob/main/notebooks/calibration.ipynb)
```

### Using nbviewer

For better notebook viewing:

```markdown
[View interactive notebook on nbviewer](https://nbviewer.org/github/bio-info/air-quality-analysis/blob/main/notebooks/pm25_analysis.ipynb)
```

---

## Example 6: Images and Diagrams

### Circuit Diagrams

```markdown
![Bioreactor Circuit Diagram](https://raw.githubusercontent.com/bio-info/advanced-bioreactor/main/docs/circuit_diagram.png)

*Figure 1: Complete circuit diagram for the bioreactor monitoring system*
```

### Sensor Setup Photos

```markdown
![Weather Station Setup](https://raw.githubusercontent.com/bio-info/weatherstation/main/images/setup.jpg)

*Weather station deployed in Hanoi, Vietnam*
```

---

## Example 7: README Sections

You can embed sections from your repository READMEs:

### From Advanced Bioreactor README

> **Features:**
> - Real-time pH and temperature monitoring
> - Automatic data logging to SD card
> - Turbidostat control for maintaining cell density
> - LED pattern control mimicking natural sunlight
> - Python simulation tools for growth prediction
>
> [Read full documentation →](https://github.com/bio-info/advanced-bioreactor#readme)

---

## Best Practices for Your Site

### 1. Always Attribute Source

```python
# Source: https://github.com/bio-info/REPO/blob/main/file.py
# Author: Binh Ng. (@bio-info)
# License: MIT
```

### 2. Keep Code Snippets Focused

Show only relevant parts, link to full code:

```cpp
// ... setup code omitted ...

void loop() {
  float pH = readPHSensor();
  float temp = readTempSensor();
  logToSD(pH, temp);
  delay(5000);
}

// See full code: https://github.com/bio-info/advanced-bioreactor
```

### 3. Update Links When Code Changes

If you refactor code, update the links in your documentation.

### 4. Use Relative Links for This Site

```markdown
<!-- Within this site -->
[Getting Started](getting-started.html)

<!-- External GitHub links -->
[View Code](https://github.com/bio-info/REPO)
```

### 5. Provide Context

Explain what the code does before showing it:

```markdown
## pH Sensor Calibration

The following function calibrates the pH sensor using a two-point calibration method:

[code snippet here]
```

---

## Your Repository Structure

Quick reference to your main repositories:

```
bio-info (GitHub Profile)
├── advanced-bioreactor/
│   ├── bioreactor.ino          # Main Arduino code
│   ├── simulation.py           # Growth simulation
│   └── docs/                   # Documentation
│
├── air-quality-analysis/
│   ├── analysis.py             # Main analysis script
│   ├── notebooks/              # Jupyter notebooks
│   └── data/                   # Sample datasets
│
├── weatherstation/
│   ├── esp8266_weather.ino     # ESP8266 code
│   ├── web/                    # Web interface
│   └── sql/                    # Database schemas
│
└── arduinos/
    ├── led_control/            # LED projects
    ├── motion_sensor/          # Motion detection
    └── power_meter/            # Power monitoring
```

---

## Next Steps

1. **Create content pages** linking to your actual code
2. **Add code examples** from your repositories with proper attribution
3. **Include datasets** for others to download and use
4. **Write tutorials** explaining how to use your projects
5. **Add images** of your setups and results

Your Jekyll site will serve as a central hub for all your research projects! 🚀

