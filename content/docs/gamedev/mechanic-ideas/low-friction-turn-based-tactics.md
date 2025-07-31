# Minimizing UI Friction in Turn Based Tactics Games

## One-click actions

Games like XCOM, Fire Emblem, Warhammer 40k Mechanicus, Gloomhaven Digital etc.
sometimes have a problem with requiring many clicks/actions from the player to
execute actions.  To minimize this, you could have the player's options for
what a character should do on a tile appear as a button on that tile. For
multiple actions these buttons could be arranged in a grid.

For example, a character could move to an empty tile (just one option with one
button).  Or if they could cast an aoe ability on that tile then on hover that
tile would have two buttons.  Clicking one would automatically take that
action.

When hovering an enemy, buttons would appear for each type of attack the
character could do.  For out of range enemies, a shadow movement could appear
when hovering to make the attack possible with just one click!

## Show Ability Effect On Hover

Another common annoyance I run into in turn based games is how many individual
checks I sometimes have to do when making a decision for a character's action.
For instance, if I want to find out which enemy I want to attack, I usually need
to go through each possible enemy in range, start the attack process, review the
damage/probability/other effect preview window, then remember that information so that I
can compare it to every other possible action I have.  This is sometimes really
trivial (when there is a single enemy, for instance), but sometimes really involved
to the point where I need to start double checking the preview windows as I forget
what they contained.

One way to solve this is to show a small pop-up preview window on top of every
possible target when hovering over a skill/attack/spell. This mock-up shows a simple
example of a healing spell with only the amount healed shown.  In practice, you would
also want to show probability to hit, any effects the spell applies (e.g. poison), etc.

![Hoverable outcomes](/docs/gamedev/mechanic-ideas/hoverable-outcomes-healing.png)

This example is overly simple and doesn't fully show the usefulness of this feature. In
a real game, the diversity of outcomes would be much greater most of the time.

### Enemy abilities

One extension of this feature is to make it so that when hovering over an enemy the same
pop-up preview window would appear on all the squares it can target (even with moving).
The window would contain that enemy's current intent given the state of the game, which
would change as you moved your characters around.  This would make it easier to see what
enemies are capable of, and would make it less likely that the player would get blindsided
by something they didn't think was possible, which is a bad experience especially if it leads
to the player reloading the encounter.

Admittedly, this might be pretty hard to implement completely depending on the game's rules.
Even if this isn't implemented, games that are wholly lacking any way to see what enemies can
do (what effects their attacks will have on your characters) besides doing all the math yourself
I find very tedious (see the turn-based modes for Pathfinder: Kingmaker and Pillars of Eternity 2).








[Mechanic Ideas]({{< relref "/" >}}?Mechanic-Ideas=true)

Categories:
[Gamedev]({{< relref "/" >}}?Gamedev=true),
[Mechanic Ideas]({{< relref "/" >}}?Mechanic-Ideas=true)