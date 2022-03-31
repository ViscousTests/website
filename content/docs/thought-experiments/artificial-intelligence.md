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
   preference to move its output to neurons "close" to it, as judged by
   distance in the graph.
1. A random neuron would be replaced by a copy of another neuron group with the
   same number of inputs and a single random output.  This is simulating
   "creativity", or the combining of disparate ideas.  Another way to do this
   would be to connect a single neuron's output to the input of another group,
   although this may lead to situations where that new group becomes
   ineffective due to overloading of random inputs.

Evolution can happen to a network during its normal running (it can learn on
the fly).

It might be interesting to think more about the difference between "learning"
and "evolution" - perhaps at a certain point only "learning" will be allowed,
and not "evolution".  To start out with it probably makes sense to not
demarcate these.

## Input/Output

The entire network would have a very simple output (perhaps even just one
binary signal), and few/no inputs.

## Starting Points

I think the nervous system of _C. elegans_ has been completely mapped, so maybe
copying that would be a good place to start?

## Objectives

I don't really know what to do here (how to bias the network to evolve in a
specific direction, or how to reward it for making "good" changes).

## Prior Art

 - https://github.com/uber-research/backpropamine
