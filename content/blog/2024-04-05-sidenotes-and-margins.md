+++
title = "The Art of Sidenotes"
date = 2024-04-05
description = "Using Tufte-style sidenotes and margin notes for supplementary content"
[taxonomies]
tags = ["typography", "design", "tufte"]
+++

Edward Tufte popularized the use of sidenotes in his beautifully designed books on data visualization.{% sidenote() %}Edward Tufte is a statistician and professor emeritus at Yale University, known for his work on information design and data visualization.{% end %} Unlike footnotes, which interrupt reading flow by sending you to the bottom of the page, sidenotes appear in the margin right alongside the relevant text.

## Why Sidenotes?

Traditional footnotes have a problem: they break your reading momentum.{% sidenote() %}Some readers skip footnotes entirely because of this disruption. Others read them immediately and lose their place in the main text.{% end %} You're reading along, encounter a superscript number, and must decide whether to jump to the bottom of the page or continue reading.

Sidenotes solve this elegantly. The supplementary information sits in the margin, visible at a glance without any navigation required.{% sidenote() %}On mobile devices, sidenotes collapse into toggleable inline notes to accommodate narrower screens.{% end %}

## Numbered Sidenotes

Numbered sidenotes are perfect for citations, clarifications, and tangential thoughts that support the main text.{% sidenote() %}Like this one! The number helps readers match the note to its reference point.{% end %}

They work well for:

- Citations and references{% sidenote() %}See Tufte, E. (2001). *The Visual Display of Quantitative Information*. Graphics Press.{% end %}
- Technical clarifications
- Historical context
- Definitions of terms

## Margin Notes

{% marginnote() %}
This is a margin note. Notice it has no number—it's for content that relates to the general area rather than a specific point.
{% end %}

Margin notes differ from sidenotes in one key way: they have no reference number. Use them for content that relates to a general section rather than a specific sentence.

They're excellent for:

{% marginnote() %}
**Quick Tip:** Margin notes work well for tips, warnings, or asides that apply to multiple paragraphs.
{% end %}

- Definitions that apply to a whole section
- Related images or diagrams
- Pull quotes
- General commentary

## Combining with Other Elements

Sidenotes work alongside other markdown features.{% sidenote() %}You can use **bold**, *italic*, and even `inline code` within sidenotes. Links work too: [example](https://example.com).{% end %} The margin provides a natural space for supplementary content without cluttering the main text column.

### With Blockquotes

> The commonality between science and art is in trying to see profoundly—to develop strategies of seeing and showing.

{% marginnote() %}
— Edward Tufte, *Beautiful Evidence*
{% end %}

### With Lists

Consider these principles of good information design:{% sidenote() %}These principles are adapted from Tufte's work on analytical design.{% end %}

1. Show the data
2. Induce the viewer to think about substance
3. Avoid distorting what the data say
4. Present many numbers in a small space
5. Make large data sets coherent

## Practical Considerations

When using sidenotes, keep a few things in mind:

**Length matters.** Short sidenotes work best.{% sidenote() %}Like this brief clarification.{% end %} Very long sidenotes can create awkward spacing or push subsequent notes far from their references.{% sidenote() %}If you find yourself writing paragraphs in a sidenote, consider whether that content belongs in the main text instead. Sidenotes should supplement, not supplant, your primary argument.{% end %}

**Density.** Too many sidenotes can overwhelm the margin.{% sidenote() %}One{% end %}{% sidenote() %}after{% end %}{% sidenote() %}another{% end %} becomes difficult to follow. Space them thoughtfully.

{% marginnote() %}
**Design note:** This theme automatically handles sidenote positioning. On wide screens, notes float in the margin. On narrow screens, they become toggleable inline elements.
{% end %}

**Mobile behavior.** On smaller screens, sidenotes transform into expandable notes that appear inline when tapped. This maintains accessibility without sacrificing the desktop reading experience.

## Interaction with Code and Tables

Code blocks and tables extend slightly into the sidenote margin to give technical content more breathing room.{% sidenote() %}Specifically, they extend about 20% wider than the prose column—roughly 13 characters.{% end %} When this happens, any sidenotes near these elements automatically shift below them.

```python
def example_function(parameter_one, parameter_two, parameter_three):
    """This code block extends into the margin for better readability."""
    result = parameter_one + parameter_two + parameter_three
    return result
```

{% marginnote() %}
Notice how this margin note appears below the code block rather than beside it. The layout prioritizes code readability.
{% end %}

This behavior is intentional. Code and tabular data benefit from horizontal space more than prose does, and the slight displacement of sidenotes is a worthwhile trade-off.{% sidenote() %}If you need a sidenote to appear directly beside a code block, consider restructuring so the sidenote reference appears in the paragraph before or after the code.{% end %}

## Conclusion

Sidenotes represent a thoughtful approach to supplementary content.{% sidenote() %}They're one of many typographic choices that distinguish carefully designed documents from hastily assembled ones.{% end %} By placing notes alongside the relevant text, they respect your readers' attention while still providing valuable context.

Try using sidenotes in your next article. Your readers will appreciate the improved flow.
