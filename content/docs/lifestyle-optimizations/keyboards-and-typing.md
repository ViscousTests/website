# Keyboards and Typing

See an overview presentation I made at https://docs.google.com/presentation/d/1YsScPYB9H_Byha7xdw69ekQ6zQyqFh3ReMfeFMfVEDk/edit.

## Layouts

https://www.keybr.com/layouts

![layouts](/docs/lifestyle-optimizations/layouts.png)

https://www.reddit.com/r/Colemak/comments/qslro8/10000_simple_wikipedia_sentences_heatmap_qwerty/

## Mods

 - https://precondition.github.io/home-row-mods#tips-and-tricks

## Touch Typing

I find this "finger-key ownership" scheme to be the most comfortable, at least when using the Colemak layout:

![finger-key ownership](/docs/lifestyle-optimizations/fingers.png)

https://www.keybr.com/ is a great place to efficiently learn touch typing.

## Speed Testing

https://monkeytype.com/ with tags is a good way to compare typing speed.

## My setup

### Corne Ergo Split Board

I bought a wireless, low profile, hotswap corne already assembled off of reddit.
https://armno.in.th/blog/building-a-wireless-corne-keyboard/ was really helpful
to get it set up.

My keymap for this board uses combo keys to activate layers, and can be found at
https://github.com/kovasap/zmk-config/blob/main/config/corne.keymap.

![corne](/docs/lifestyle-optimizations/corne.jpg)
*My Wireless Corne, with a Boardrun in the background I'm trying to get rid of.*

### Laptop (ANSI)

I use xkb on linux to implement something like
https://dreymar.colemak.org/ergo-mods.html#angle-wide.
My config is at https://github.com/kovasap/dotfiles/tree/master/keyboard.

### Kaly42

#### Motivation

I've been liking my Corne, but had two main issues with it:

1. The furthest-in thumb key was very hard to reach, and borderline unusable.
2. The pinky column stagger was not pronounced enough, making me often use my
   ring finger to hit the top pinky key.

The Kaly42 promised to solve both of these problems, and I'd been wanting to try
building a board from scratch anyway.

#### Parts

I used the parts list on the Kaly and Cantor (which the Kaly is based on) GitHub
pages to guide my purchases.
I bought everything on Aliexpress except for keycaps and switches, which came
from lowprokb.ca.
The PCB I got from JCLPCB.

At first I bought the wrong microcontroller from Aliexpress.
It may have been the right spec, was was too wide to fit on the board.
I ended up using [this
post](https://github.com/Dwctor/Kaly/issues/6#issuecomment-2365386452) to get
one that would work.

I hopefully thought my microcontroller would come with pins and sockets so that
I could make it removable (in case it broke when installed on the board), but it
did not.
I ended up sourcing some low profile sockets from a coworker.
Next time I would definitely buy sockets up front to make sure I had them.

#### Build Process

This was my first soldering job, so a good amount of learning was involved.
Specifically, it took me a while to get used to the fact that some part of the
keyboard took way longer to heat up than others when soldering, and I often
applied solder too early while the metal was still too cold, leading to an ugly
connection.

Some of my connections worked right after soldering, but failed after a couple
hours exposed to colder temps.

#### Final Product

![kaly](/docs/lifestyle-optimizations/kaly.jpg)
*My Kaly42!*

## Inspiration and other projects

 - A small keyboard with many layers:
   https://news.ycombinator.com/item?id=32634511
 - https://ianthehenry.com/posts/peggi/

Categories: [Lifestyle Optimizations]({{< relref "/" >}}?Lifestyle-Optimizations=true)
