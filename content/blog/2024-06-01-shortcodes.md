+++
title = "Shortcodes Reference"
date = 2024-06-01
description = "Interactive elements: spoilers, slideshows, sidenotes, and margin notes"
[taxonomies]
tags = ["typography", "design"]
+++

Typeset provides several shortcodes for adding interactive and supplementary content to your posts. This page demonstrates each one.

## Spoilers

Spoilers create collapsible sections for content you want to hide by default. They're useful for:

- Hiding solutions to problems
- Lengthy tangential content
- Spoiler warnings for media discussions
- FAQ-style expandable answers

### Basic Usage

{% spoiler(title="Click to reveal the answer") %}
The answer is **42**.

You can include any markdown content inside a spoiler:
- Lists
- **Bold** and *italic* text
- `inline code`
- And more!
{% end %}

### Example: Code Solution

{% spoiler(title="Solution to FizzBuzz") %}
```python
for i in range(1, 101):
    if i % 15 == 0:
        print("FizzBuzz")
    elif i % 3 == 0:
        print("Fizz")
    elif i % 5 == 0:
        print("Buzz")
    else:
        print(i)
```
{% end %}

### Syntax

Use the `spoiler` shortcode with an optional `title` parameter. The content goes between the opening and closing tags.

The `title` parameter is optional and defaults to "Spoiler" if not provided.

---

## Slideshows

Slideshows create image galleries with previous/next navigation. Perfect for:

- Photo galleries
- Step-by-step tutorials
- Before/after comparisons
- Portfolio showcases

### Example: Classic Data Visualizations

{{ slideshow(images=["/images/minard.png", "/images/nightingale.jpg", "/images/anscombe.svg"]) }}

The images above show three famous statistical graphics:
1. **Minard's Map** (1869) — Napoleon's march to Moscow
2. **Nightingale's Rose** (1858) — Causes of mortality in the Crimean War
3. **Anscombe's Quartet** (1973) — Four datasets with identical statistics but different distributions

### Syntax

Use the `slideshow` shortcode with an `images` parameter containing an array of image paths.

---

## Sidenotes

Sidenotes place supplementary content in the margin alongside the relevant text.{% sidenote() %}Like this! Sidenotes are numbered and appear right where you need them.{% end %}

They're ideal for:

- Citations and references{% sidenote() %}Tufte, E. (2001). *The Visual Display of Quantitative Information*. Graphics Press.{% end %}
- Clarifications
- Tangential thoughts
- Definitions

### Syntax

Use the `sidenote` shortcode inline within your text. The content appears in the margin on desktop and as a toggleable note on mobile.

---

## Margin Notes

{% marginnote() %}
This is a margin note. Notice it has no number—use these for content that relates to a general area rather than a specific word.
{% end %}

Margin notes are similar to sidenotes but without numbers. They're useful for:

- Section-level commentary
- Tips and warnings
- Pull quotes
- Definitions that apply to multiple paragraphs

### Syntax

Use the `marginnote` shortcode. Place it near the paragraph it relates to.

---

## Combining Shortcodes

You can use multiple shortcodes together effectively. Here's a spoiler containing formatted content:

{% spoiler(title="Example with formatted content") %}
Spoilers support all standard markdown:

- **Bold** and *italic* text
- Lists (like this one)
- Code blocks
- Links and more

**Tip:** Keep spoiler content focused. If it's too long, consider making it a separate section.
{% end %}

{% marginnote() %}
Sidenotes and margin notes work great alongside spoilers for adding context without cluttering the main content.
{% end %}

You can also use sidenotes near spoilers to provide additional context.{% sidenote() %}This sidenote appears next to the spoiler section above.{% end %}
