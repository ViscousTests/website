---
bookShowToc: false
draft: true
---

# Market Trading

## Core ideas

Euro-style board game where each player is (relatively) independently creating
their own nations/economies.  Interaction between players comes from what each
player is putting into/taking out of the common "markets" - pools of resources
that all players can buy from/sell to.  Hopefully this leads to somewhat
cooperative play, where two players could have nations that produce
complementary resources.


## Setting up

Each player takes an agricola-style random game board with a grid of different
terrain types.  For example:

F F F F F F
F F F W W W
M M F F W W
M F F F F W

M = mountain
F = field
W = water


## Flow of Game

Players do not have a "hand" of resources, all resources must be dynamically
used from either your board or from the markets.

On your turn, you can develop up to one (???) tile on your board with a
resource.  You can also trade your existing resources with market resources as
much as you want, assuming you have places to put them.  

At the end of your turn, each resource developed onto your board replicates
itself and puts extra copies on top.  The amount of replication depends on the
resource.  Also some developments may consume multiple resources to produce
their product.


## Markets

The market contains resources laid out in a grid:

Deck | Tier | Resources
---- | ---- | ---------
     | T3   |
     | T2   |
     | T1   |

You can trade 1:1 for any resource in the same tier, and 2:1 for any resource
in the tier above (of 1:2 for a lower tier resource).  The ratio is 4:1 for
T1:T3 resources.  If there are **no copies** of a resource you are giving into
the market, it counts for double its value.  Also, if you are taking the
**last** resource from a market row, it also counts for double it's value.

All instances of the same resource in a row get stacked up on top of each
other.  

At the end of each round of play, for each row, one resource from the largest
stack is trashed, and a new random resource from each deck is revealed and
added.


## Resource cards

Card | Tier | Location | Production
---- | ---- | -------- | ----------
Water | T1   | W        | -> Water
Wheat | T1  | F        | -> Wheat
Grindstone | T2  | F        | Wheat -> Flour
Bakery | T2  | F        | Wheat + Water -> Bread
