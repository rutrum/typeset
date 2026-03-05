+++
title = "Configuration"
template = "docs_page.html"
description = "Configure the Typeset theme"
weight = 2

[extra]
docs_root = "docs/_index.md"
+++

## Basic Configuration

The Typeset theme is configured through your site's `config.toml` file.

### Site Settings

```toml
base_url = "https://example.com"
title = "My Site"
description = "A site using the Typeset theme"
```

### Theme Options

Configure theme-specific options in the `[extra]` section:

```toml
[extra]
# Navigation links
nav_links = [
    { name = "Blog", url = "/blog" },
    { name = "Docs", url = "/docs" },
    { name = "About", url = "/about" },
]

# Show table of contents on pages
show_toc = true
toc_depth = 3
```

## Color Customization

The theme has two main colors you can customize:

- **accent_color** - Used for highlights, active states, hover effects (default: gold)
- **link_color** - Used for hyperlinks (default: blue)

```toml
[extra]
# Light mode colors
accent_color = "#b8860b"      # Academic gold
link_color = "#2563eb"        # Blue links

# Dark mode colors (optional - uses light colors if not set)
accent_color_dark = "#d4a84b" # Brighter gold for dark backgrounds
link_color_dark = "#60a5fa"   # Lighter blue for dark backgrounds

# Additional overrides
background_color = "#fffff8"  # Page background
text_color = "#111111"        # Main text color
```

If you don't set `_dark` variants, the light mode colors are used in both modes.

## Typography

Customize fonts:

```toml
[extra]
font_body = "'Crimson Pro', Georgia, serif"
font_heading = "'EB Garamond', Georgia, serif"
font_mono = "'JetBrains Mono', monospace"
```

## Math Support

Enable KaTeX math rendering:

```toml
[extra]
math_everywhere = true  # Load KaTeX on all pages
```

Or enable per-page in frontmatter:

```toml
[extra]
math = true
```
