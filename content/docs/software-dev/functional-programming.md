---
backlinks-set: 
categories-set: #{"Software Dev"}
---
# Functional Programming

## What it it?

This talk is a really good overview:
https://www.youtube.com/watch?app=desktop&v=vK1DazRK_a0.

## Personal Observations

As I've writing I've done [a](https://github.com/kovasap/reddit-tree)
[few](https://kovasap.github.io/docs/health-and-longevity/biomarker-correlator/)
projects using Clojure, a functional programming lisp-like language. From those
projects, I've noticed a few distinct differences between Clojure and Python,
the procedural/object oriented language I'm most familiar with.

### Programming a function

When getting down to implementing a specific function in Clojure vs Python,
I've noticed that Clojure requires more upfront thought and searching to try to
find the proper functions to compose together to achieve the desired
functionality.  In Python, I find it's much more natural to just start
incrementally building a solution, whereas in Clojure I feel like I need to
come up with the whole solution all at once, which is more difficult. I think
as I learn the Clojure standard library of functions better, this will become
easier with time and ultimately I will be implementing less stuff myself than I
would be in Python.

I interviewed someone currently working at Nubank for a Google job in Clojure
(their preferred language). This underscored to me the above observation - the
interview didn't go very well in part because the candidate had trouble
incrementally building up the solution.