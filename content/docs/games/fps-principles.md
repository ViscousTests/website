# Core First Person Shooter (FPS) Principles

These are some general guidelines I've learned over my many hours playing FPS
games.  I'm writing them here so I don't forget them, and so others might learn
something - or point out flaws in my reasoning so I can get better!

## Information, and Proactivity

Most FPS fights come down to proactively acting on information about where
exactly your opponent is. If you know with precision where your opponent is,
and they don't know where you are, you can confidently peek at them and often
even prefire (or shoot as you are peeking).  Even if your aim is worse, you
will most of the time win the fight because your opponent has to reactively (1)
notice you, (2) readjust their aim (often >90 degrees of turning), and then (3)
shoot - whereas you get to skip the first two steps.

Additionally, if you are peeking off of an information advantage, you also have
the benefit of controlling the timing of the fight. Since you are peeking
around cover, you can always easily reverse your peek and duck back behind
cover if needed to reload or retreat.  This gives yet another massive advantage
to you.

Usually, proactively peeking someone involves you moving, but it can sometimes
involve you staying still in an unexpected place and using audio cues to
anticipate an enemy coming into view.  Here, even though you are not moving,
you are still the proactive party - your opponent is reacting to you.  Of
course, for this to work, you must be sure your opponent doesn't know where you
are, otherwise they will peek you and almost certainly win since they control
the timing of the fight.

## Getting and Keeping an Information Advantage

To win as many fights as possible, it's crucial to take those fights with an
information advantage. But how do you get this advantage and keep it as much as
possible?  

### The Cone of Danger

The most useful way I've found to do this is to always hold in your head a
model of where your opponents might be.  One way to think about this is a "cone
of danger".  Imagine you can see through the walls of the map you are playing
on.  Then draw a cone from the leftmost enemy all the way to the rightmost
enemy.  This is the "cone of danger" you need to expect you opponents to be in.
Practically, since you normally cannot see through walls, you'll need to
constantly estimate this, drawing the cone from corners enemies could peek out
at you from.

![Cone Start](/docs/games/cone_of_danger_start.png)

Ideally, you want to keep this code as small as possible:

![Cone Small](/docs/games/cone_of_danger_small.png)

while making your opponent's cone as large as possible:

![Cone Large](/docs/games/cone_of_danger_large.png)
![Cone Max](/docs/games/cone_of_danger_max.png)

The best way to do this is by making it possible for yourself to move around
your opponent freely without them seeing you, while making it so any movement
they make is detectable by you. This generally involves controlling (knowing
for certain no enemies are in) most of the map. 

Practically, moving around a lot also helps mess with your opponents cone. Even
if you have the ability to move around your opponent freely, your opponent will
often make the assumption you stayed still - if they are right, then they have
a very small cone when they go to peek you. A good practice is to always move
after an enemy sees you if possible.

Different games provide different tools to help determine where opponents are.
Use these!

## Peeking Unknown Corners

If you are peeking around a corner into an unknown area with many potential
enemy locations, it's best to jiggle peak back and forth around the corner
checking each individual location one-by-one. This will help make sure you are
not fighting multiple enemies at once, and will give you control over fight
timing.  Be careful that this can be difficult when close to a corner, since
every unit of movement you make will expose a lot more of you than if you were
further from the corner.

## Influences

 - [Great break down by CoachNihil of kandyrew's
   gameplay](https://www.youtube.com/watch?v=L4QuNEkLtl8&ab_channel=kandyrew)
   which helped inspire the "cone of danger" thinking.
