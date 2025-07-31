# Complexity

A killer of productivity (and fun).

## Perspectives

- [Simple made Easy by Rich Hickey](https://www.infoq.com/presentations/Simple-Made-Easy/)
  - Complex = entangled = difficult to reason about
  - To make systems more understandable, need to reduce them to small,
    **independant** pieces (like pure functions with no side effects)
- [The Origin of Complexity by Joakim
  Tengstrand](https://itnext.io/the-origin-of-complexity-8ecb39130fc)
  - Complexity arises when systems are not changeable.  To make systems more
    changeable, increase their **usability** and reduce **coordination**
    between their pieces.

## Quantifying Complexity

Useful to identify where complexity is coming from in your project.
Also useful to make a case for why it should be addressed (that it is bad
enough).

Yuanfang Cai has done a lot of cool work here.  See:

 - [Software Health Management Talk](https://www.youtube.com/watch?v=lC7khoMu0NA)
 - Quantifying coupling in code constructs: https://www.cs.drexel.edu/~yfcai/papers/2016/icse2016-DL.pdf
 - Quantifying coupling by which code files are changed together: https://www.cs.drexel.edu/~yfcai/papers/2019/icpc2019.pdf

Categories:
[Software Dev]({{< relref "/" >}}?Software-Dev=true)