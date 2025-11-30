# My Documentation Site

A Jekyll-based documentation site using the Just the Docs theme.

## Local Development

### Prerequisites
- Ruby 2.5.0 or higher
- RubyGems
- Jekyll

### Setup

1. Clone this repository
2. Install dependencies:
   ```bash
   bundle install
   ```

3. Run the local server:
   ```bash
   bundle exec jekyll serve
   ```

4. Open your browser and visit: `http://localhost:4000`

## Project Structure

```
.
├── _config.yml          # Site configuration
├── index.md             # Homepage
├── docs/                # Documentation pages
├── code/                # Code examples
├── data/                # Data resources
└── Gemfile              # Ruby dependencies
```

## Deployment

This site is designed to be deployed on GitHub Pages:

1. Create a GitHub repository
2. Push this code to the repository
3. Enable GitHub Pages in repository settings
4. Your site will be live at `https://username.github.io/repository-name`

## Customization

- Edit `_config.yml` to change site settings
- Modify the color scheme in `_config.yml`
- Add new pages by creating `.md` files
- Organize content using front matter navigation

## Theme Documentation

This site uses [Just the Docs](https://just-the-docs.com/) theme.

## License

MIT License


