# Tracking Health

![Health Stats XKCD](/docs/health-and-longevity/xkcd_health_stats.png)

## Why?

A common (the most common?) way people try to stay healthy is by adopting habits
that are generally known to be healthy. By "generally known", I mean that
epidemiological studies have found correlations between certain behaviors and
positive outcomes, or that anecdotes from individual people support a behavior
("this worked for me"). This is a great starting point for determining what is
healthy, but it is not perfect. Unfortunately, there is a great deal of
variation between different people in what is physically healthy for them, and
both studies and anecdotes can be systematically flawed.

Probably the most reliable way to stay vigorous and healthy for the longest
possible time is by self-experimenting to see what behaviors work best for you.
Of course, using anecdotes/epidemiology/randomized controlled trials to inform
what to try will greatly accelerate your ability to settle on the best habits.

## Inputs

These are things you can change or habits you can adapt to effect your health.
Tracking them is useful to correlate them with outputs.

### Food

#### Methods

 - Weighing food, logging with [cronometer](https://cronometer.com/).
   - Upsides: You get lots of data about even very specific micronutrients,
     helping spot difficiencies.
   - Downsides: Difficult but doable, especially with food you don't prepare yourself.
   - Tip: If using the free version https://pi-hole.net/ will help make the ad
     experience less painful.
 - Taking pictures of food, using [bitesnap](https://getbitesnap.com/)
   - Upsides: Easy to do
   - Downsides: Not super accurate for quantities
 - Taking pictures of food, using [Momentodb](https://mementodatabase.com/)
   - Upsides: Very easy to do
   - Downsides: No data, have to manually refer back to each image.

Tracking food quantity without a scale is pretty tricky.  One common approach
is to use parts of your hand to measure, but different people's hands are
different sizes. I measured my hand size by dipping it in a blender full of
water:

Without Fist | With Fist
------------ | --------------
![blender-without-fist](/docs/health-and-longevity/blender-without-fist.jpg) | ![fist-in-blender](/docs/health-and-longevity/fist-in-blender.jpg)

For me this looks like a delta from ~630mL -> ~1100mL, or a total displacement
of ~470mL, or **~2 cups**!

Some other estimates to use:

 - A teaspoon is about the size of the tip of your finger
 - A tablespoon is about the size of an ice cube
 - 1/4 cup is about the size of a large egg
 - 1/2 cup is about the size of a tennis ball
 - A full cup is about the size of a baseball, an apple or a (normal sized) fist

https://100-grams.blogspot.com/ gives a good view into what 100g of various
foods looks like, which is useful for building intuition for non-scale-based
tracking (e.g. Bitesnap).

### Exercise

#### Methods

 - Fitbit
 - Oura Ring
 - Location Tracking

### Blood Pressure

### Sleep Time

### Dental Care

### Socializing

Use a microphone to detect how much I personally am talking, use this as a
proxy for how social I am being.

### Temperature

Both body temperature and external ambient temperature/humidity.

## Outputs

These are metrics that correlate in some way with health goals (e.g. staying
vigorous and health for the longest possible time).

### Epigenetic Clocks

### Sleep Quality

### [Continuous Glucose Monitoring]({{< relref
"/docs/health-and-longevity/continuous-glucose-monitoring.md" >}})

### Resting Heart Rate

Notes for how to accomplish:

 - https://forum.quantifiedself.com/t/heart-rate-monitor-recommendations-for-24-7-continuous-monitoring-and-logging/327/57

Correlates with healthspan (citation needed).

### Heart Rate Variability

Correlates with healthspan (citation needed).

### Cortisol Levels

Can be measured in sweat apparently. No commercial products as of 11/2021.

### Omega-3 Index

https://omegaquant.com/omega-3-index-basic/

Correlates with healthspan (citation needed).

### Biological Age Via Blood Testing

See [Michael Lustgarten's
site](https://michaellustgarten.com/2021/09/11/quantifying-biological-age-blood-test-4-in-2021/)
for details.

I created a spreadsheet for myself based off of Lustgarten's with a custom
Google Sheets function to calculate biological age at
https://docs.google.com/spreadsheets/d/1ZhbaKATK2hERSFHq21pJ1fqn-EVKtMqIU1iv2Z01_EY/edit?usp=sharing.

### Weight

Correlates with healthspan (citation needed).

### Waist Circumference

Correlates with healthspan (citation needed).

### Body composition

Use smart scale or more sophisticated techniques.

Correlates with healthspan (citation needed).

### Digestion Progress

Random Idea: Use body's center of mass to estimate digestion progress/state.
Presumably right after eating mass is centered in the stomach, then slowly
diffuses to other parts of the body.

Could also use waist circumference.

### Tracking Farts/Burps/Poops

Would use [Momentodb](https://mementodatabase.com/) for this.

Might correlate with gut health somehow, which might correlate to longer
healthspan?

### Mood and Mental State

 - Mood tracking via heart data: https://upmood.com/



Categories: [Health And Longevity]({{< relref "/docs/all.md" >}}?Health-And-Longevity=true)
