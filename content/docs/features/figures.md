+++
title = "Figures"
template = "docs_page.html"
description = "Academic-style figures with automatic numbering and captions"
weight = 6

[extra]
docs_root = "docs/_index.md"
+++

Figures provide a way to display images with captions and automatic numbering, following academic publishing conventions.

## Basic Usage

Use the `figure` shortcode to add a captioned image:

```jinja2
{{/* figure(src="/images/nightingale.jpg", caption="Florence Nightingale's polar area diagram") */}}
```

{{ figure(src="/images/nightingale.jpg", caption="Florence Nightingale's polar area diagram showing causes of mortality in the Crimean War") }}

The figure number is generated automatically using CSS counters—you don't need to manage numbers manually.

## Multiple Figures

When you add multiple figures, they're numbered sequentially:

{{ figure(src="/images/minard.png", caption="Charles Minard's map of Napoleon's Russian campaign", id="fig-minard") }}

{{ figure(src="/images/anscombe.svg", caption="Anscombe's quartet: four datasets with identical statistical properties but different distributions") }}

Notice how the numbering continues automatically: Figure 1, Figure 2, Figure 3.

## Parameters

The figure shortcode accepts these parameters:

| Parameter | Required | Description |
|-----------|----------|-------------|
| `src` | Yes | Path to the image file |
| `caption` | No | Caption text (supports inline markdown) |
| `alt` | No | Alt text for accessibility (defaults to caption) |
| `id` | No | Custom ID for cross-references (defaults to `fig-{n}`) |
| `wide` | No | Set to `true` to extend figure into margins (centered) |

## Custom IDs for Cross-References

You can assign a custom ID to reference a figure later:

```jinja2
{{/* figure(src="/images/minard.png", caption="Minard's famous visualization", id="fig-minard") */}}

See [Figure 2](#fig-minard) for an example of narrative data visualization.
```

This creates an anchor you can link to from anywhere on the page. The link [Figure 2](#fig-minard) will scroll to the Minard figure above.

## Captions with Markdown

Captions support inline markdown formatting:

{{ figure(src="/images/gammapdf.png", caption="The *gamma distribution* $\\Gamma(k, \\theta)$ for various shape parameters $k$") }}

You can use *italics*, **bold**, and even inline math in your captions.

## Wide Figures

By default, figures stay within the content column. For larger images like panoramas or detailed diagrams, use the `wide` parameter to extend them into the margins:

```jinja2
{{/* figure(src="/images/minard.png", caption="A wide panoramic visualization", wide=true) */}}
```

{{ figure(src="/images/minard.png", caption="Minard's map extends into the margins when using `wide=true`", wide=true) }}

Wide figures extend equally on both sides (centered), giving large images more room to breathe while maintaining visual balance.

## Video Support

The figure shortcode automatically detects video files (`.mp4`, `.webm`, `.mov`, `.avi`) and renders a `<video>` element instead of an image:

```jinja2
{{/* figure(src="/docs/example.webm", caption="A sample video with playback controls") */}}
```

{{ figure(src="/docs/example.webm", caption="Videos display with native playback controls") }}

Videos include `controls` for play/pause and `playsinline` to prevent fullscreen on mobile. All the same parameters work: `caption`, `id`, and `wide`.

## Layout Behavior

Figures push any floating sidenotes down to prevent overlap, similar to how code blocks and tables behave. On narrower viewports, wide figures automatically shrink to fit the content column.
