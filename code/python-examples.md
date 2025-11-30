---
layout: default
title: Python Examples
parent: Code Examples
nav_order: 1
---

# Python Code Examples

Collection of useful Python code snippets.

## File Operations

```python
# Reading a file
with open('data.txt', 'r') as file:
    content = file.read()
    print(content)

# Writing to a file
with open('output.txt', 'w') as file:
    file.write("Hello, World!")
```

## Data Processing

```python
import pandas as pd

# Load CSV data
df = pd.read_csv('data.csv')

# Basic statistics
print(df.describe())

# Filter data
filtered = df[df['value'] > 100]
```

## API Request Example

```python
import requests

# Make a GET request
response = requests.get('https://api.example.com/data')

if response.status_code == 200:
    data = response.json()
    print(data)
else:
    print(f"Error: {response.status_code}")
```


