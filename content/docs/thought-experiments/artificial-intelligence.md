# Artificial Intelligence

Reading Chapter 7 (Artificial Creativity) of "The Beginning of Infinity" by
David Deutsch gave me some ideas for things to try out WRT creating some kind
of artificial intelligence.

## Modelling the Intelligence

The AI could be composed of "neurons" in a graph data structure.  Each neuron
would have multiple other neurons connected to it's "input" side, and connect
to one other neuron as it's "output".  It would carry a single "fire/no fire"
signal during every tick of time.  The signal would be "fire" if during the
last tick more than half (or some percent) of the input signals were "fire",
otherwise it would be "no fire".

Neurons would be grouped arbitrarily into sub-networks with relatively few
inputs/outputs compared to the interconnections within them.

## Evolution

The model would evolve using a random application of the following changes:

1. A random neuron would move its output side to another random neuron, with a
   preference to move its output to neurons "close" to it, as judge by distance
   in the graph.
1. A random neuron would be replaced by a copy of another neuron group with the
   same number of inputs and a single random output.  This is simulating
   "creativity", or the combining of disparate ideas.

Evolution can happen to a network during it's normal running.

## Input/Output

The entire network would have a very simple output (perhaps even just one
binary signal), and few/no inputs.


## Starting Points

I think the nervous system of C. elegans has been completely mapped, so maybe
copying that would be a good place to start?


