# My Computing Environment

<!--
To link this documentation more with my actual config, one idea is to add
something like this to all the settings I document in my rc files:

## SETTING_NAME ##
some code that applies a setting
## END ##

Then, when I'm writing docs in this website I can simply reference the
SETTING_NAME instead of inlining the code.  To make this work I need to write
code that parses all my rc files and constructs some kind of mapping from
SETTING_NAMES to the code (and the language to get syntax highlighting right and
the filename).  Then, I need to replace the names I put in this documentation
with the values from the mapping.  This code would run when the website is
built.  
-->

My complete configuration files ("dotfiles") can be found at
https://github.com/kovasap/dotfiles.  

## Color and Brightness {#color-brightness}

### Temperature {#temperature}

I find that dim screens make it easier for me to read and work for longer
without straining or fatiguing my eyes.  Therefore, I generally keep my screen
at a low brightness level.  

#### On Linux

I use [Redshift](http://jonls.dk/redshift/) to
keep my screen at a low temperature (low 3000Ks).  Currently I use a constant
temperature all the time, as opposed to making the color lower at night.

#### On Windows

I use [f.lux](https://justgetflux.com/) with default settings (changing color over
the day).  I frequently mess with the color temperature slider based on what I am doing.

### Selective Window Brightness {#selective-brightness}

#### On Linux

I prefer dark, lower contrast color schemes for coding or working on the command
line.  They feel easier on my eyes and allow for more variety of color for use
in (for example) syntax highlighting.  I find that colors blend into light
backgrounds more, and are therefore less readable.  

However, most documents in the world are rendered with black text on a white
background.  I find this perfectly readable, but starkly different from my dark
color schemes.  This makes it quite jarring to switch between the two, which I
often do when I'm writing or coding while looking at a reference document in my
web browser.  

To fix this issue, I've tried a couple things:

- Using a page dimmer in my web browser.
  - This is generally a good solution, but (since these usually inject dimming
    javascript or css into the page that is being viewed) does not work when
    viewing web browser settings or reading pdfs or using any UI that is not
    strictly on the page.
- Boosting the brightness of my terminal and dimming everything globally.
  - Works for all light colored programs!
  - The best way I could find to do this was to take the colors in the terminal
    colorscheme (as hex strings) and increase their brightness value to make new
    hex string colors, which I used as my colorscheme.  This definitly makes the
    terminal brighter but, as the brightness goes up, colors start maxing out
    util they all become white (#ffffff).  I wasn't able to boost brightness
    enough with this trick while keeping my colors distinct.

The current solution I have is to selectively apply color filters to different
programs using [Compton](https://wiki.archlinux.org/index.php/Compton).  This is
not a feature that Compton supports natively, so I had to apply a patch I found
[here](https://github.com/chjj/compton/issues/266).  The patched code can be
found [here](https://github.com/kovasap/compton).  To configure this method, you
can add shaders (functions that change pixel colors) to the
`compton-chg-saturate-brightness-contrast.glsl` file in the root of that
repository.  I run it by adding this to my `~/.xinitrc`:

```
~/.xinitrc
---
compton --glx-prog-win-rule ~/compton/compton-chg-saturate-brightness-contrast.glsl:'class_g="Google-chrome"' --backend glx -b
```

Another idea I had to help fix my problem was to selectively dim brighter
pixels, while keeping dimmer pixels unchanged.  I read that using the
[HSV](https://en.wikipedia.org/wiki/HSL_and_HSV) color encoding could provide a
good way to define what "brighter" means and a way to change it.  Luckily, 
Compton provided a easy way to mess with this!  My fiddling can be found in the
[`compton-chg-saturate-brightness-contrast.glsl`](https://github.com/kovasap/compton/blob/94efb6c9a1f80e8dbf61409dfa9b476f15a06a16/compton-chg-saturate-brightness-contrast.glsl#L64)
file in my fork of the Compton repository. One thing I tried here was to use a
function like
[this](https://www.wolframalpha.com/input/?i=plot+x+*+(1+-+a+*+x)+for+a%3D0,0.1,0.2,0.3,+x%3D0.0..1.0)
to map the "value" (V in HSV) to a dimmer value (notice how higher `V` values
are "dimmed" more than lower ones).  

One fun tool for this experimentation was a color picker like
[this](https://alloyui.com/examples/color-picker/hsv.html) one.  When changing
the shader, the 2d color picker would have its colors changed, verifying the
change made in the shader!  For example, after setting the shader to map `V`
values above 0.8 to 0.0, I could see the part of the color picker with those
values turn black.

In the end, I may just stick with selectively dimming entire bright windows
globally, as opposed to dimming certain colors.  But it was fun to mess with and
I may return to it in the future!

Another thing to try going forward would be other color representation models,
such as [CIELAB](https://en.wikipedia.org/wiki/CIELAB_color_space) or
[YCbCr](https://en.wikipedia.org/wiki/YCbCr).

#### On Windows

Because I often game on windows, I prefer to have my secondary monitor be dimmer
than the primary to not distract from the game I'm playing, but still be there to
look stuff up.  I use the exellent [Pangolin Screen Brightness](https://www.pangobright.com/)
utility to do this.

