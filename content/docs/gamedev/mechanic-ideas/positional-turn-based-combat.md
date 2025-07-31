# Positional Turn Based Combat

I'm a huge fan of the Darkest Dungeon combat system, where each team is arranged
in a line.
Each position of the line enables abilities specific to that position, that can
then target specific positions of the enemy line.
Reordering the lines then becomes a cool tactical tool that can be used to gain
an advantage.

This idea could be extrapolated and twisted into a system where each battlefield
has a set of unique positions that each have tags:

```
                                          ┌───────────────────┐           
                                          │                   │           
                      ┌────────────┐      │   Plains          │           
 ┌─────────────┐      │  Plains    │      │   Highland        │           
 │ Foliage     │      │  Rocky     ┼──────┤   Space for 2     │           
 │             ┼──────┼            │      └───────────────────┘           
 │             │      └────────────┴───┐                                  
 └───────────┬─┘                       │                                  
             │                    ┌────┴──────┐                           
             │                    │           │                           
             │                    │ Cliff     ┼──┐                        
             │                    │           │  │                        
             │                    └─┬─────────┘  ├──────────────────────┐ 
      ┌──────┼───────────┐          │            │                      │ 
      │                  ┼──────────┘            │   Swamp              │ 
      │  River           │                       │   Space for 2        │ 
      │                  │                       │                      │ 
      └──────────────────┘                       └──────────────────────┘ 

```
*Made with https://asciiflow.com/#/*

Each character from each side would occupy these positions, and could move
between them based on their connections.
The tags on each position would unlock use of different abilities.
Attack ranges could be based on position adjacency.

Each battlefield would have different positions, keeping combat varied and fresh.

Categories:
[Gamedev]({{< relref "/" >}}?Gamedev=true),
[Mechanic Ideas]({{< relref "/" >}}?Mechanic-Ideas=true)