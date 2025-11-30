# Git Configuration Guide

## Setting Up Your Git User Information

When you commit and push to GitHub, Git needs to know who you are. Here's how to configure it properly.

---

## Option 1: Local Configuration (This Repository Only)

Configure Git just for this Jekyll site:

```bash
cd /Users/binh.nguyen2/working/jeky

# Set your name
git config user.name "Binh Ng."

# Set your email (use your GitHub email)
git config user.email "your-github-email@example.com"
```

### To Find Your GitHub Email:

1. Go to https://github.com/settings/emails
2. Use either:
   - Your public email address
   - GitHub's no-reply email: `USERNAME@users.noreply.github.com`
   - For you: `bio-info@users.noreply.github.com`

---

## Option 2: Global Configuration (All Repositories)

Set your Git identity for all repositories on your Mac:

```bash
# Set your name globally
git config --global user.name "Binh Ng."

# Set your email globally
git config --global user.email "your-email@example.com"
```

---

## Recommended Setup

### Step 1: Check Current Configuration

```bash
# Check local config (this repository)
git config user.name
git config user.email

# Check global config (all repositories)
git config --global user.name
git config --global user.email
```

### Step 2: Update Your Email

Choose one:

**Option A: Use GitHub's No-Reply Email (Privacy)**
```bash
cd /Users/binh.nguyen2/working/jeky
git config user.email "bio-info@users.noreply.github.com"
```

**Option B: Use Your Public Email**
```bash
cd /Users/binh.nguyen2/working/jeky
git config user.email "your-actual-email@example.com"
```

### Step 3: Verify Configuration

```bash
cd /Users/binh.nguyen2/working/jeky
git config --list --local
```

---

## Understanding Priority

Git checks for user info in this order:
1. **Local** (repository-specific) - highest priority
2. **Global** (user-specific)
3. **System** (machine-wide)

Local config overrides global config!

---

## Complete Setup Commands

Here's the full setup for this repository:

```bash
# Navigate to your project
cd /Users/binh.nguyen2/working/jeky

# Initialize git (if not done)
git init

# Configure user
git config user.name "Binh Ng."
git config user.email "bio-info@users.noreply.github.com"  # Or your email

# Verify
echo "Git Configuration:"
git config user.name
git config user.email

# Set default branch to main
git config init.defaultBranch main
```

---

## View All Git Configuration

```bash
# View local config
git config --list --local

# View global config
git config --list --global

# View all config (local + global + system)
git config --list
```

---

## Common Scenarios

### Scenario 1: Different Email for Different Projects

```bash
# Work project
cd ~/work-project
git config user.email "work@company.com"

# Personal project (this one)
cd /Users/binh.nguyen2/working/jeky
git config user.email "bio-info@users.noreply.github.com"

# Global fallback
git config --global user.email "personal@gmail.com"
```

### Scenario 2: Fix Commits with Wrong Author

If you already made commits with the wrong user:

```bash
# For the last commit
git commit --amend --author="Binh Ng. <bio-info@users.noreply.github.com>"

# For multiple commits (advanced - be careful!)
git rebase -i HEAD~3  # Replace 3 with number of commits
```

---

## SSH Key Setup (Optional but Recommended)

To push to GitHub without entering password every time:

### Step 1: Check for Existing SSH Keys
```bash
ls -al ~/.ssh
# Look for: id_rsa.pub, id_ed25519.pub, or id_ecdsa.pub
```

### Step 2: Generate New SSH Key (if needed)
```bash
ssh-keygen -t ed25519 -C "your-github-email@example.com"
# Press Enter to accept default location
# Enter a passphrase (optional but recommended)
```

### Step 3: Add SSH Key to ssh-agent
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

### Step 4: Copy SSH Public Key
```bash
cat ~/.ssh/id_ed25519.pub
# Copy the output
```

### Step 5: Add to GitHub
1. Go to https://github.com/settings/keys
2. Click "New SSH key"
3. Paste your public key
4. Give it a title (e.g., "MacBook Pro")
5. Click "Add SSH key"

### Step 6: Test Connection
```bash
ssh -T git@github.com
# Should see: "Hi bio-info! You've successfully authenticated..."
```

### Step 7: Use SSH URL for Remote
```bash
cd /Users/binh.nguyen2/working/jeky
git remote add origin git@github.com:bio-info/bio-info.github.io.git
# or if already exists:
git remote set-url origin git@github.com:bio-info/bio-info.github.io.git
```

---

## Personal Access Token (Alternative to SSH)

If you prefer HTTPS over SSH:

### Step 1: Create Personal Access Token
1. Go to https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Select scopes: `repo` (full control)
4. Click "Generate token"
5. **Copy the token immediately** (you won't see it again!)

### Step 2: Use Token When Pushing
```bash
# When prompted for password, paste your token instead
git push -u origin main
# Username: bio-info
# Password: [paste your token here]
```

### Step 3: Save Credentials (Optional)
```bash
# macOS will prompt to save in Keychain
git config --global credential.helper osxkeychain
```

---

## Quick Reference Commands

```bash
# View current user
git config user.name
git config user.email

# Set local user (this repo only)
git config user.name "Binh Ng."
git config user.email "bio-info@users.noreply.github.com"

# Set global user (all repos)
git config --global user.name "Binh Ng."
git config --global user.email "bio-info@users.noreply.github.com"

# Remove config
git config --unset user.name
git config --unset user.email

# Edit config file directly
git config --local --edit   # Opens in default editor
git config --global --edit
```

---

## Configuration File Locations

```bash
# Local config (repository-specific)
/Users/binh.nguyen2/working/jeky/.git/config

# Global config (user-specific)
~/.gitconfig

# System config (machine-wide)
/etc/gitconfig
```

---

## Recommended Setup for GitHub Pages

For this Jekyll site, here's the recommended configuration:

```bash
cd /Users/binh.nguyen2/working/jeky

# Initialize repository
git init

# Configure user
git config user.name "Binh Ng."
git config user.email "bio-info@users.noreply.github.com"

# Set main as default branch
git config init.defaultBranch main

# Add GitHub remote
git remote add origin git@github.com:bio-info/bio-info.github.io.git

# Create .gitignore (already exists)
# Add all files
git add .

# First commit
git commit -m "Initial Jekyll site with Just the Docs theme"

# Push to GitHub
git push -u origin main
```

---

## Troubleshooting

### Issue: "Please tell me who you are"

**Error:**
```
*** Please tell me who you are.

Run
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
```

**Solution:**
```bash
git config user.name "Binh Ng."
git config user.email "bio-info@users.noreply.github.com"
```

### Issue: "Permission denied (publickey)"

**Solution:** Set up SSH keys (see SSH Key Setup section above)

### Issue: "Authentication failed"

**Solutions:**
1. Use Personal Access Token instead of password
2. Or set up SSH authentication
3. Check that 2FA is not blocking you

---

## Privacy Tip

GitHub can hide your email address:

1. Go to https://github.com/settings/emails
2. Check "Keep my email addresses private"
3. Check "Block command line pushes that expose my email"
4. Use the no-reply email: `bio-info@users.noreply.github.com`

---

## Summary

**For this repository:**
```bash
cd /Users/binh.nguyen2/working/jeky
git config user.name "Binh Ng."
git config user.email "bio-info@users.noreply.github.com"
```

**To verify:**
```bash
git config --list --local | grep user
```

That's it! Now when you commit and push, it will use the correct author information. 🎉

