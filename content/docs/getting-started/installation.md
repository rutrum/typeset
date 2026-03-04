+++
title = "Installation"
template = "docs_page.html"
description = "How to install the Typeset theme"
weight = 1

[extra]
docs_root = "docs/_index.md"
+++

## Prerequisites

Before installing Typeset, make sure you have [Zola](https://www.getzola.org/) installed on your system.

## Installation Steps

### 1. Create a new Zola site

```bash
zola init my-site
cd my-site
```

### 2. Add the theme

Clone the theme into your themes directory:

```bash
git clone https://github.com/rutrum/typeset themes/typeset
```

### 3. Configure your site

Update your `config.toml` to use the theme:

```toml
theme = "typeset"
```

### 4. Build and serve

```bash
zola serve
```

Your site should now be running at `http://127.0.0.1:1111`.

## Next Steps

Head over to [Configuration](/docs/getting-started/configuration/) to learn about customizing your site.
