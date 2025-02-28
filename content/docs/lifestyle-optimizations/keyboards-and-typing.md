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

## My Journey Through Different Boards

### Kinesis Freestyle Split

After doing a posture consultation at work, I was recommended to try a split
keyboard to help keep my shoulders more relaxed and my wrists/arms strait.
I was given a kinesis freestyle split keyboard, which felt great.
I specifically really liked the built in tenting feature, which I found very
comfortable.

### Planck

I borrowed a Planck keyboard from a coworker as my first foray into
ortholinear mechanical keyboards.
I liked the key density, programmatability and brown mechanical switches, but
struggled with the small size.
Specifically, I didn't like how close my hands were to each other, and how the
keys didn't really line up with my fingers.

### Boardrun

To fix the cramped feeling of the Planck, I found a Boardrun keyboard (see
picture in the Corne section below) from a local via a discord group.
I didn't use this keyboard for very long before deciding that I really wanted to
go back to using a split keyboard.
The separation of the two halves on the boardrun just wasn't enough for me.

### Corne Ergo Split Board

I bought a wireless, low profile, hotswap corne already assembled off of reddit.
https://armno.in.th/blog/building-a-wireless-corne-keyboard/ was really helpful
to get it set up.

My keymap for this board uses combo keys to activate layers, and can be found at
https://github.com/kovasap/zmk-config/blob/main/config/corne.keymap.

![corne](/docs/lifestyle-optimizations/corne.jpg)
*My Wireless Corne, with a Boardrun in the background I'm trying to get rid of.*


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

![kaly_in_progress](/docs/lifestyle-optimizations/kaly_in_progress.jpg)
*Midway
through the build, here I was trying to decide if I should use the large sockets
available at my makerspace, or solder directly onto the board.
Luckily I was able to find shorter sockets from a coworker that gave me the best
of both worlds.*

#### Final Product

![kaly](/docs/lifestyle-optimizations/kaly.jpg)

![kaly_on_wood](/docs/lifestyle-optimizations/kaly_on_wood.jpg)

![kaly_on_desk](/docs/lifestyle-optimizations/kaly_on_desk.jpg)

#### Keymap

https://github.com/kovasap/qmk_firmware/blob/master/keyboards/kaly/kaly42/keymaps/kovasap/keymap.c

### Lintilla

#### Motivation

After using my Kaly42 for a while, there were some minor issues that were
consistenly annoying me.
I detailed these issues at
https://www.reddit.com/r/ErgoMechKeyboards/comments/1i6q9ih/searching_for_keyboard_42_key_split_staggered/.
A commenter helpfully suggested the
[Lintilla](https://github.com/ctranstrum/lintilla) keyboard, which looked to
solve all of my problems, plus add some nice new features like being wireless.

#### Build Process

The instructions on the Lintilla GitHub page for getting parts and building the
board were phenomenal.
In no small part due to the high quality instructions, building the Lintilla was
just as easy or easier than building the Kaly42 despite being a more complex
board.

I did run into a couple hiccups that might be useful for others to know:

 - Finding the M2 screws and hex nuts was surprisingly difficult in my local
   area.
   The hardware stores I tried only had down to M3.
   I ended up ordering many more than I needed from Amazon.
 - Ordering the Xiao microcontrollers from Seeedstudio in China took 30 days to
   deliver.
   Maybe I just got unluchy.
 - At first I put the microcontrollers on both sides of the board backwards.
   One of them I removed (and destroyed :( ) by grilling it on a hot plate.
   Luckily the other one I was able to save by removing it with a hot air gun.
 - I had some other minor issues during the build that are documented at
   https://github.com/ctranstrum/lintilla/issues?q=is%3Aissue%20author%3Akovasap.
   The keyboard creator was extremely helpful in helping me work through these
   issues, and several of the issues led to repository updates that will solve
   the problems for future builders.


![Mid build lintilla](/docs/lifestyle-optimizations/mid-build-lintilla.jpg)

![lintilla xiao wrong side](/docs/lifestyle-optimizations/lintilla-wrong-side-xiao.jpg)
*Note how the microcontroller is incorrectly on the top of the board, whereas
all the sockets/diodes are on the bottom!*

#### Final Product

![lintilla](/docs/lifestyle-optimizations/lintilla-both.jpg)

![lintilla one side](/docs/lifestyle-optimizations/lintilla-right.jpg)
*Except for the middle thumb key, the keycaps are colored by the finger that will use them.*

![lintilla other side](/docs/lifestyle-optimizations/lintilla-left.jpg)
*I tried out some ["convex" or "thumb"
keycaps](https://typeractive.xyz/products/mbk-keycaps?_pos=1&_sid=79cf78d62&_ss=r&variant=46728680407271)
on the thumb keys, and it is incredible how much more comfortable they are to
use than the normal keycaps with the sharpish edges.*

![lintilla with kaly](/docs/lifestyle-optimizations/lintilla-with-kaly.jpg)
*My finished Lintilla, with my Kaly42 behind it.
I like using gloves as wrist rests, and have even attached some to my kaly with
strings.
These rests double as "cases" I can flip on top of the keycaps to protect them
for transport when I put the keybord halves back-to-back.
I'll probably end up doing something similar for the Lintilla.*

#### Keymap

https://github.com/kovasap/zmk-config/blob/main/config/lintilla.keymap

## Normal Keyboard Usage

As much as I like my custom keyboards, sometimes it's just more convenient to
use my laptop keyboard.
To make it nicer, I use xkb on linux to implement something like
https://dreymar.colemak.org/ergo-mods.html#angle-wide.
My config is at https://github.com/kovasap/dotfiles/tree/master/keyboard.

## Inspiration and other projects

 - A small keyboard with many layers:
   https://news.ycombinator.com/item?id=32634511
 - https://ianthehenry.com/posts/peggi/

Categories: [Lifestyle Optimizations]({{< relref "/" >}}?Lifestyle-Optimizations=true),
[Recent]({{< relref "/" >}}?Recent=true)