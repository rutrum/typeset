+++
title = "Mathematical Typography with KaTeX"
date = 2024-03-10
description = "Rendering beautiful mathematical equations using KaTeX"
[taxonomies]
tags = ["math", "typography", "latex"]
[extra]
math = true
+++

One of the hallmarks of academic writing is beautiful mathematical typography. This theme uses KaTeX to render LaTeX-style equations directly in your browser.

## Inline Mathematics

Mathematical expressions can appear inline with text. For example, the famous equation $E = mc^2$ shows the relationship between energy and mass. The quadratic formula $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$ solves any quadratic equation.

Greek letters like $\alpha$, $\beta$, $\gamma$, and $\theta$ are commonly used in mathematics and physics. Subscripts and superscripts work naturally: $x_1, x_2, \ldots, x_n$ and $2^{10} = 1024$.

## Display Equations

For important equations, display mode centers them on their own line:

$$
\int_{-\infty}^{\infty} e^{-x^2} \, dx = \sqrt{\pi}
$$

This is the Gaussian integral, one of the most important integrals in mathematics.

## The Euler Identity

Often called the most beautiful equation in mathematics:

$$
e^{i\pi} + 1 = 0
$$

It connects five fundamental constants: $e$, $i$, $\pi$, $1$, and $0$.

## Calculus

Derivatives and integrals are the foundation of calculus:

$$
\frac{d}{dx}\left[ \int_a^x f(t) \, dt \right] = f(x)
$$

The chain rule for composite functions:

$$
\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}
$$

Taylor series expansion:

$$
f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n
$$

## Linear Algebra

Matrix notation is fully supported:

$$
\mathbf{A} = \begin{pmatrix}
a_{11} & a_{12} & \cdots & a_{1n} \\\\
a_{21} & a_{22} & \cdots & a_{2n} \\\\
\vdots & \vdots & \ddots & \vdots \\\\
a_{m1} & a_{m2} & \cdots & a_{mn}
\end{pmatrix}
$$

The determinant of a 2×2 matrix:

$$
\det \begin{pmatrix} a & b \\\\ c & d \end{pmatrix} = ad - bc
$$

## Probability and Statistics

Bayes' theorem:

$$
P(A|B) = \frac{P(B|A) \cdot P(A)}{P(B)}
$$

The normal distribution probability density function:

$$
f(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2}
$$

## Physics

Maxwell's equations in differential form:

$$
\nabla \cdot \mathbf{E} = \frac{\rho}{\varepsilon_0}
$$

$$
\nabla \cdot \mathbf{B} = 0
$$

$$
\nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}}{\partial t}
$$

$$
\nabla \times \mathbf{B} = \mu_0\mathbf{J} + \mu_0\varepsilon_0\frac{\partial \mathbf{E}}{\partial t}
$$

Schrödinger's equation:

$$
i\hbar\frac{\partial}{\partial t}\Psi(\mathbf{r}, t) = \hat{H}\Psi(\mathbf{r}, t)
$$

## Aligned Equations

Multi-line derivations can be aligned:

$$
\begin{aligned}
(x + y)^2 &= (x + y)(x + y) \\\\
&= x^2 + xy + yx + y^2 \\\\
&= x^2 + 2xy + y^2
\end{aligned}
$$

## Cases and Piecewise Functions

$$
|x| = \begin{cases}
x & \text{if } x \geq 0 \\\\
-x & \text{if } x < 0
\end{cases}
$$

## Conclusion

With KaTeX, your mathematical content renders quickly and beautifully. Just add `math = true` to your page's frontmatter to enable it.
