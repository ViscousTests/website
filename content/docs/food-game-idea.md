---
bookShowToc: false
draft: true
---

# Farming Fighting Game


## UI

Play area:

```
x x x x x x x x
x x x x x x x x
x x x x x x x x
x x x x x x x x
x x x x x x x x
x x x x x x x x
x x x x x x x x
---------------
x x x x x x x x
x x x x x x x x
x x x x x x x x
x x x x x x x x
x x x x x x x x
x x x x x x x x
x x x x x x x x
```

## Fighting

Top area is for fighting.  Combat starts with enemy unit locations and intended
movements shown, like in a turn of Into the Breach.  After seeing positions,
player gets to choose what units to deploy where.  Combat proceeds
auto-battler style like Underlords.  

If enemies get to the crops, they will pillage the first one they touch.  This
is like health - if you are out, you lose!

## Growing

Bottom area is for growing (one crop per tile).  Crops take each some N turns to
grow.  Each turn, empty plots can be filled EXCEPT with the crop that was just
harvested off of them.  

## Getting seeds

There is a market (like in Underlords) with random seeds that you can buy for
money (or trade crops for?).  Seeds MUST be planted on purchase.

## Recipies

Seeds have recipes they are part of.  Recipies are unlocked as you play, maybe
like items in binding of issaac.  When crops are harvested, they are made into
recipies, which create new combat units or economic buffs.  Recipies are the
only way you improve your game state besides buying seeds to grow (but once
crops grow they are gone).  


# Another idea

## World map

x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x _ _ _ x x x x x x x x x x
x x x x x x x x x _ _ x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x
x x x x x x x x x x x x x x x x x x x x x

## Gameplay 

### Farming

Start out in middle of map with some basic villages that grow different types
of crops.  Each village has a "hero", who starts with a basic ability based on
his/her village type.  If different types of villages are next to each other,
heros from the different villages can learn skills from each other in some way
that makes them still unique.

Each land type (field, mountain, etc.) only accepts 2-3 different village
types.

Crops expire after certain number of turns (different crops take longer to
grow).  When expired, you cannot plant the same crop on the same tile again.
Every turn, when crops expire, you can plant new crops with your current seeds.
Seeds are permanent/infinite (when you get a seed in a given game, you can plant
it wherever).

As you spread across the map, your land is split into provinces when they hit a
certain size.  A province can only contain ~5 tiles before it splits into 2.
Provinces attack and defend alone - only the food within them is used to make
units.  

### Fighting

Every round, either the player has a chance to expand to a "x" tile, or an
existing farm tile is attacked.  Either way, combat is triggered.  **The crops
in a small radius around the combat site are the only ones that give benefit!**
This makes for interesting decision making about where to plant what crops.

Combat occurs on a tile grid and is very similar to chess.  Units start in
certain locations, then each side gets to make a move.  If a unit moves onto
another unit, that unit is taken/routed.  You can revive units by moving to
specific locations with specific healer units.  Food from overworld/farming
system gives units different abilities/move patterns.  Some ideas:

1. change move pattern (e.g. knight, rook, bishop, some combination)
2. allow to revive units
3. "overwatch" or "defend" - tiles around the unit or in a certain pattern are
   watched: if an enemy moves through/onto them they are taken.  this could
   include the tile the unit is on!

#### Enemies

Vary with seasonal cycle (if we have one).  Inspired by nature/elements.  Theme
is struggle of civilization against nature.  Try to characterize nature as
brutal.



# Nomad Idea

Given a randomly generated map, a list of enemy units, and their general
direction of attack, the player must place down farms/villages.  These
farms/villages each produce one fighting unit of different classes.  Adjacent
farms/villages can create hybrid class units (or give their units special
skills?).  

After placement, enemies start to trickle in and the player must survive as
long as they can without their farms being destroyed/captured.  
