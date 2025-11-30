# Jekyll GitHub Pages Setup Guide

## ✅ What's Been Set Up

Your Jekyll website with the "Just the Docs" theme is ready! Here's what we've configured:

### 1. **Ruby Environment**
- Installed Ruby 3.4.7 via Homebrew (system Ruby had compatibility issues)
- Configured to use Homebrew Ruby instead of macOS system Ruby

### 2. **Jekyll Site Structure**
```
/Users/binh.nguyen2/working/jeky/
├── _config.yml          # Site configuration
├── Gemfile              # Ruby dependencies
├── index.md             # Homepage
├── docs/                # Documentation section
│   ├── index.md
│   └── getting-started.md
├── code/                # Code examples section
│   ├── index.md
│   └── python-examples.md
├── data/                # Data resources section
│   └── index.md
├── start-server.sh      # Convenient startup script
└── README.md            # Project documentation
```

### 3. **Theme**
- Using "Just the Docs" theme via `remote_theme`
- Clean, modern documentation-focused design
- Built-in search functionality
- Mobile responsive
- Syntax highlighting for code

### 4. **Features Configured**
- ✅ Search enabled
- ✅ Heading anchors
- ✅ Back to top button
- ✅ Last edit timestamps
- ✅ GitHub edit links (needs configuration)
- ✅ SEO optimization
- ✅ RSS feed

---

## 🚀 How to Run Locally

### Option 1: Using the Startup Script (Easiest)
```bash
chmod +x start-server.sh
./start-server.sh
```

### Option 2: Manual Command
```bash
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"
bundle exec jekyll serve
```

Then open your browser and visit: **http://localhost:4000**

The server will automatically reload when you make changes to your files!

---

## 📝 Adding Content

### Adding a New Documentation Page

Create a new file in the `docs/` folder:

```markdown
---
layout: default
title: My New Page
parent: Documentation
nav_order: 2
---

# My New Page

Your content here...
```

### Adding a New Code Example

Create a new file in the `code/` folder:

```markdown
---
layout: default
title: JavaScript Examples
parent: Code Examples
nav_order: 2
---

# JavaScript Examples

\`\`\`javascript
console.log("Hello, World!");
\`\`\`
```

### Adding a Blog Post (Optional)

Create a `_posts/` folder and add files named: `YYYY-MM-DD-title.md`

```markdown
---
layout: default
title: My First Post
date: 2025-11-30
---

Your post content...
```

---

## 🔧 Customization

### Updating Site Information

Edit `_config.yml` and update:
- `title`: Your site title
- `description`: Site description
- `url`: Your GitHub Pages URL
- `baseurl`: Repository name (if not using username.github.io)
- `aux_links`: Update GitHub link

### Changing Color Scheme

In `_config.yml`, change:
```yaml
color_scheme: light  # Options: light, dark, custom
```

### Adding Your GitHub Repository

Update these lines in `_config.yml`:
```yaml
aux_links:
  "View on GitHub":
    - "https://github.com/YOUR-USERNAME/YOUR-REPO"

gh_edit_repository: "https://github.com/YOUR-USERNAME/YOUR-REPO"
```

---

## 🌐 Deploying to GitHub Pages

### Step 1: Create a GitHub Repository

1. Go to GitHub and create a new repository
2. Name it either:
   - `YOUR-USERNAME.github.io` (for personal site)
   - `any-repo-name` (for project site)

### Step 2: Initialize Git and Push

```bash
git init
git add .
git commit -m "Initial Jekyll site with Just the Docs theme"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO.git
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository settings
2. Navigate to "Pages" section
3. Under "Source", select "Deploy from a branch"
4. Select branch: `main` and folder: `/ (root)`
5. Click "Save"

Your site will be live at `https://YOUR-USERNAME.github.io/YOUR-REPO/` in a few minutes!

---

## 🛠️ Troubleshooting

### Server Won't Start

If you get Ruby errors:
```bash
# Make sure you're using Homebrew Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Reinstall dependencies
rm -rf vendor/bundle Gemfile.lock
bundle install
```

### Theme Not Loading

If the theme doesn't appear:
1. Make sure `_config.yml` has `remote_theme: just-the-docs/just-the-docs@v0.8.2`
2. Clear the cache: `rm -rf _site .jekyll-cache`
3. Restart the server

### Changes Not Showing

1. Hard refresh your browser (Cmd+Shift+R on Mac)
2. Clear Jekyll cache: `rm -rf .jekyll-cache`
3. Restart the server

---

## 📚 Additional Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Just the Docs Theme Documentation](https://just-the-docs.com/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Markdown Guide](https://www.markdownguide.org/)

---

## ⚙️ Important Files

| File | Purpose |
|------|---------|
| `_config.yml` | Main configuration file |
| `Gemfile` | Ruby dependencies |
| `index.md` | Homepage content |
| `_site/` | Generated static site (auto-created, ignored by git) |
| `.gitignore` | Files to exclude from git |

---

## 🎨 Next Steps

1. **Customize your site**: Update `_config.yml` with your information
2. **Add content**: Create pages in `docs/`, `code/`, and `data/` folders
3. **Test locally**: Run `./start-server.sh` and view at http://localhost:4000
4. **Deploy**: Push to GitHub and enable GitHub Pages
5. **Share**: Your site will be live!

---

## 💡 Tips

- Use front matter (the --- section at the top) to control navigation
- The `nav_order` field determines menu position
- Set `has_children: true` for parent pages
- Use `parent:` to nest pages under other pages
- Check the [Just the Docs documentation](https://just-the-docs.com/) for advanced features

Happy documenting! 🚀


