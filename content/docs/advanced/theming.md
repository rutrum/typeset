+++
title = "Theming"
template = "docs_page.html"
description = "Creating custom themes and styles"
weight = 2

[extra]
docs_root = "docs/_index.md"
+++

## CSS Variables

Typeset uses CSS custom properties for theming. Override these in your own stylesheet:

```css
:root {
  --color-bg: #fffff8;
  --color-surface: #f5f5f0;
  --color-text: #111111;
  --color-text-muted: #555555;
  --color-border: #dddddd;
  --color-accent: #b8860b;
  --color-link: #2563eb;
}
```

## Dark Mode

The theme supports automatic dark mode based on system preferences. You can also toggle manually with the button in the header.

Dark mode colors are defined in the same variables:

```css
:root[data-theme="dark"] {
  --color-bg: #1a1a1a;
  --color-surface: #252525;
  --color-text: #e4e4e4;
  --color-text-muted: #a0a0a0;
  --color-border: #404040;
  --color-accent: #d4a84b;
  --color-link: #60a5fa;
}
```

## Typography Scale

Font sizes follow a 1.25 modular scale:

| Variable | Size |
|----------|------|
| `--font-size-sm` | 0.875rem (14px) |
| `--font-size-base` | 1.125rem (18px) |
| `--font-size-lg` | 1.25rem (20px) |
| `--font-size-xl` | 1.563rem (25px) |
| `--font-size-2xl` | 1.953rem (31px) |
| `--font-size-3xl` | 2.441rem (39px) |

## Spacing Scale

Consistent spacing using CSS variables:

| Variable | Size |
|----------|------|
| `--spacing-xs` | 0.25rem (4px) |
| `--spacing-sm` | 0.5rem (8px) |
| `--spacing-md` | 1rem (16px) |
| `--spacing-lg` | 2rem (32px) |
| `--spacing-xl` | 4rem (64px) |
