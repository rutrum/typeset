+++
title = "Shortcodes"
template = "docs_page.html"
description = "Available shortcodes in Typeset"
weight = 1

[extra]
docs_root = "docs/_index.md"
+++

## Sidenotes

Create Tufte-style sidenotes using the `sidenote` shortcode with an `id` and `text` parameter.

## Margin Notes

Similar to sidenotes but without numbering. Use the `marginnote` shortcode with a `text` parameter.

## Spoilers

Create expandable spoiler content using the `spoiler` shortcode with a `title` parameter, followed by your hidden content, and closed with `end`.

Here's an example with a slideshow nested inside:

{% spoiler(title="Click to reveal image gallery") %}

You can nest other shortcodes inside spoilers, including slideshows:

{{ slideshow(images=["/wheel1.png", "/wheel2.png", "/wheel3.png"]) }}

This is useful for hiding large content that readers may want to skip.

{% end %}

## Slideshows

Create image slideshows using the `slideshow` shortcode with an `images` array parameter:

{{ slideshow(images=["/wheel1.png", "/wheel2.png", "/wheel3.png"]) }}
