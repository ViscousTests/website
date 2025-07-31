# Game Types/Mechanics/Appeals

## Engine Building

When a player continually updates a state (e.g. a farm or RPG character or
desk) with new elements, with each step making the state better at achieving
some goal.  Often, the state will become even better with each update that the
last update made it; the rate of state betterment per step is convex.  In the
end, the state may be able to "go infinite" or otherwise reach some victory
game state in one turn.

### Examples

 - The game board is an engine in Magic: TG.
 - The player boards + cards in Agricola.
 - The player boards in Wingspan.
 

## Knowledge Building

Playing through the games gives insight that allows progression.
One way to identify this is to compare how long it would take to complete the
game on the first playthrough vs the second.
If the second playthrough would be much faster, then knowledge building is a
large part of the game.

### Examples

 - Outer Wilds
 - Roguelikes


## Trial-Discovery Game Loop

One very satisfying game loop goes like this:

1. The game presents a difficult trial or puzzle
1. After completing the trial, the player is rewarded with a discovery like:
   1. a new part of the story
   1. some new mechanics to play with
   1. new customization options for character building or more generally future
      trial preparation
1. Back to step 1

In my opinion, for the loop to work well, the trial must be hard. This can be
hard to implement in a game with lots of customization options (some builds
might trivialize trials, and some may make them impossible). In this case what
I've seen work the best is games that make trials on the harder side, but also
provide intermediate content for players to do to e.g. level up their party.
This way, players with builds that aren't working as well can choose to just
get stronger to the point where their build does work. And players with good
builds are rewarded by making it through the discovery loop faster.

Games that do this really well both with story and with character customization
in my opinion include:

 - [Fell Seal - Arbiter's Mark]({{< relref "/docs/games/fell-seal-arbiters-mark.md" >}})
 - [XCOM 2]({{< relref "/docs/games/XCOM-2-+-War-of-the-Chosen.md" >}})

## Urgency

Some sense that the player needs to do something to avoid loss is important to
avoid players getting bored. If nothing happens when they do nothing, how much
do the player's actions really mean?

Categories:
[Gamedev]({{< relref "/" >}}?Gamedev=true)

Backlinks:
[Xcom 2 + War Of The Chosen]({{< relref "/docs/games/XCOM-2-+-War-of-the-Chosen.md" >}}),
[Fell Seal Arbiters Mark]({{< relref "/docs/games/fell-seal-arbiters-mark.md" >}}),
[Experiences]({{< relref "/docs/lifestyle-optimizations/experiences.md" >}})