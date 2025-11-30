---
layout: default
title: Referencing GitHub Files
parent: Documentation
nav_order: 3
---

# How to Reference Files from GitHub

This guide shows you different ways to reference and link to files in your GitHub repositories.

## Your GitHub Profile

Based on your profile at [https://github.com/bio-info](https://github.com/bio-info), you have several repositories that you can reference:

- [advanced-bioreactor](https://github.com/bio-info/advanced-bioreactor) - Arduino code for pH, temperature monitoring
- [air-quality-analysis](https://github.com/bio-info/air-quality-analysis) - Python code for PM2.5 analysis
- [weatherstation](https://github.com/bio-info/weatherstation) - ESP8266 weather monitoring
- [arduinos](https://github.com/bio-info/arduinos) - Arduino code collection

---

## Method 1: Direct Links to Files

### Link to a Specific File
```markdown
[View the Arduino code](https://github.com/bio-info/advanced-bioreactor/blob/main/bioreactor.ino)
```

Example: [View the Arduino code](https://github.com/bio-info/advanced-bioreactor/blob/main/bioreactor.ino)

### Link to a Specific Line in a File
```markdown
[View line 42](https://github.com/bio-info/advanced-bioreactor/blob/main/bioreactor.ino#L42)
```

### Link to a Range of Lines
```markdown
[View lines 10-20](https://github.com/bio-info/advanced-bioreactor/blob/main/bioreactor.ino#L10-L20)
```

---

## Method 2: Embed Code from GitHub

### Display Code Snippet
You can copy code from your GitHub repos and display it here:

```python
# From air-quality-analysis repository
import pandas as pd
import matplotlib.pyplot as plt

def analyze_pm25(data):
    """Analyze PM2.5 data from sensors"""
    df = pd.DataFrame(data)
    return df['pm25'].describe()
```

### With Attribution
```python
# Source: https://github.com/bio-info/air-quality-analysis
# File: analysis/pm25_analysis.py
```

---

## Method 3: GitHub Raw File URLs

For direct file access (CSV, JSON, images), use raw URLs:

### Data Files
```markdown
Download the data: [PM25_data.csv](https://raw.githubusercontent.com/bio-info/air-quality-analysis/main/data/PM25_data.csv)
```

### Images
```markdown
![Sensor Setup](https://raw.githubusercontent.com/bio-info/weatherstation/main/images/setup.jpg)
```

### JSON Configuration
```markdown
[Download config.json](https://raw.githubusercontent.com/bio-info/arduinos/main/config.json)
```

**Format:**
```
https://raw.githubusercontent.com/USERNAME/REPOSITORY/BRANCH/path/to/file
```

---

## Method 4: GitHub Gist Embeds

If you create GitHub Gists, you can embed them:

```html
<script src="https://gist.github.com/bio-info/GIST_ID.js"></script>
```

---

## Method 5: Reference Repository Files Locally

You can download files from your GitHub repos and include them in this Jekyll site:

### Step 1: Add files to your Jekyll site
```bash
# Create a downloads folder
mkdir -p assets/downloads

# Add files from your repos
cp ~/path/to/file.csv assets/downloads/
```

### Step 2: Reference them in your documentation
```markdown
Download: [PM2.5 Dataset](/assets/downloads/pm25_data.csv)
```

---

## Method 6: Link to GitHub Pages from Other Repos

If your other repositories have GitHub Pages enabled:

```markdown
View the live demo: [Weather Station Dashboard](https://bio-info.github.io/weatherstation)
```

---

## Method 7: Submodules (Advanced)

You can include entire repositories as submodules:

```bash
# Add a submodule
git submodule add https://github.com/bio-info/air-quality-analysis code/air-quality

# Reference files
[Analysis Code](code/air-quality/analysis.py)
```

---

## Example: Creating a Project Showcase Page

Here's how to create a page showcasing your projects:

```markdown
---
layout: default
title: My Projects
---

# Research Projects

## Air Quality Analysis
Analyzing PM2.5 data using Python and machine learning.

- **Repository:** [air-quality-analysis](https://github.com/bio-info/air-quality-analysis)
- **Technologies:** Python, Pandas, Jupyter
- **View Code:** [Main Analysis Script](https://github.com/bio-info/air-quality-analysis/blob/main/analysis.py)
- **Data:** [Download Sample Data](https://raw.githubusercontent.com/bio-info/air-quality-analysis/main/data/sample.csv)

## Advanced Bioreactor
Arduino-based monitoring system for algae bioreactors.

- **Repository:** [advanced-bioreactor](https://github.com/bio-info/advanced-bioreactor)
- **Technologies:** Arduino, C++, Python
- **Documentation:** [Setup Guide](https://github.com/bio-info/advanced-bioreactor#readme)
```

---

## Best Practices

1. **Use Relative Links** within this site:
   ```markdown
   [See Getting Started](getting-started.md)
   ```

2. **Use Absolute GitHub URLs** for external repos:
   ```markdown
   [View Source](https://github.com/bio-info/REPO/blob/main/file.py)
   ```

3. **Keep URLs Updated**: If you rename branches or files, update links

4. **Use Raw URLs for Downloads**: For CSV, JSON, images that users will download

5. **Add Context**: Always explain what the link is:
   ```markdown
   ❌ [Click here](https://github.com/...)
   ✅ [View the Arduino sensor code](https://github.com/...)
   ```

---

## Your Configured GitHub Integration

This site is already configured to work with your GitHub account:

- **Profile:** [https://github.com/bio-info](https://github.com/bio-info)
- **"View on GitHub" button** links to your profile (top right)
- **"Edit this page"** buttons will link to files in your repository
- **Repository URL:** Will be set when you create the repo

---

## Next Steps

1. **Create Your Repository**
   ```bash
   # On GitHub, create a new repo named: bio-info.github.io
   ```

2. **Push Your Jekyll Site**
   ```bash
   cd /Users/binh.nguyen2/working/jeky
   git init
   git add .
   git commit -m "Initial Jekyll site"
   git remote add origin https://github.com/bio-info/bio-info.github.io.git
   git push -u origin main
   ```

3. **Enable GitHub Pages**
   - Go to repository Settings → Pages
   - Select source: Deploy from branch `main`
   - Your site will be live at: `https://bio-info.github.io`

4. **Reference Your Other Repos**
   - Create pages linking to your existing projects
   - Embed code examples from your repositories
   - Link to datasets and resources

---

## Quick Reference Table

| What to Link | URL Format | Example |
|--------------|------------|---------|
| File in repo | `https://github.com/USER/REPO/blob/BRANCH/path` | [Link](https://github.com/bio-info/arduinos/blob/main/led_control.ino) |
| Raw file | `https://raw.githubusercontent.com/USER/REPO/BRANCH/path` | [Link](https://raw.githubusercontent.com/bio-info/air-quality-analysis/main/data.csv) |
| Specific line | Add `#L42` to file URL | [Link](https://github.com/bio-info/arduinos/blob/main/code.ino#L42) |
| Line range | Add `#L10-L20` to file URL | [Link](https://github.com/bio-info/arduinos/blob/main/code.ino#L10-L20) |
| Repository | `https://github.com/USER/REPO` | [Link](https://github.com/bio-info/advanced-bioreactor) |
| Your profile | `https://github.com/USER` | [Link](https://github.com/bio-info) |

