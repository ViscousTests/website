---
backlinks-set: 
categories-set: #{"Software Dev"}
---
# Design via Documentation

One trap that I've fallen into early on in a project is a lack of "concreteness"
about what the final proposed product will look like.

Design documents should solve this problem, but often contain so much
information that it is hard to come to a singular view of how someone would use
the final product.
For instance, design documents often have lists of requirements, UML/component
diagrams, sections on supporting systems (telemetry, testing, security, etc.),
internal technical details, etc.
This can make it hard to spot holistic issues with the design, as focus will
mostly be on individual sections.
Additionally, large designs can push reviewers to mentally paraphrase and gloss
over complex sections, making holes of vagueness in the design easy to miss.

Design documents can also be very hard to write when there are so many
unknowns at the outset of a project.
Prototyping before design is a good way to manage this, but is not a perfect
solution.
There is always the danger of going too far with the prototype (spending too
much time on work that will need to be re-done) or not going far enough (and
missing important insight about how things should be done).
Prototying is also not always technically feasible.

An alternate step to take before design (or instead of design), is to write
guided documentation for the final product as if it existed.
This documentation would walk though the critical user journeys of the proposed
product, going into more implementation detail than a normal documentation page.
One way to think about this is "prototying via documentation" (instead of in
code).

By walking through all the steps like this, it is much more concrete what the
user experience will be like, and holes or unknowns will be easier to spot.
Additionally, feedback can be much more precise and specific; reviewers can
point to a specific step in the user journey and express skepticism or propose
an additional step.

Discussion: https://news.ycombinator.com/item?id=38725340#38727474