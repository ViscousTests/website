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

## Software Tools

This table summarizes the functionalities of different software tools I've
tried for personal data tracking. Here are what the columns mean:

**Data Entry/Export**: Descriptions of how possible/easy it is to enter data
into the tool and get it back out for custom storage or analysis. They use this
legend:
  - 🚫 = Impossible
  - ⛏️ = Manual and Difficult
  - 🛠️ = Manual and Ergonomic
  - 🤖 = Automatic

**Analysis**: The tool provides some way to analyzer and visualize your data to
see trends over time or other views into the data.

**DB Comparison**: The tool compares your data to external data sources as part
of the visualization to help put said data into context (e.g. is my value too
high or too low).

**Recommendations**: The tool makes specific recommendations about how you
should behave given your input data.

Each column value follows this legend:
 - 🚫 = Feature Doesn't Exist
 - ✔️ = Feature Available


| Tool                                                                        | Specialty      | Data Entry | Data Export | Analysis | DB Comparison | Recommendations |
|-----------------------------------------------------------------------------|----------------|------------|-------------|----------|---------------|-----------------|
| [Cronometer](https://getbitesnap.com/)                                      | Food           | 🛠️         | 🛠️          | ✔️        | ✔️             | 🚫              |
| [Bitesnap](https://cronometer.com/)                                         | Food           | 🛠️         | 🛠️          | ✔️        | ✔️             | 🚫              |
| [SleepAsAndroid](https://sleep.urbandroid.org/)                             | Sleep          | 🛠️+🤖      | 🤖          | ✔️        | 🚫            | ✔️               |
| [MomentoDB](https://mementodatabase.com/)                                   | General Data   | 🛠️         | 🤖          | ✔️        | 🚫            | 🚫              |
| [ActivityWatch](https://activitywatch.net/)                                 | PC/Phone Usage | 🤖         | 🛠️*         | ✔️        | 🚫            | 🚫              |
| [Google Drive](https://drive.google.com)                                    | General Data   | ⛏️          | 🤖          | 🚫       | 🚫            | 🚫              |
| [GPSLogger](https://gpslogger.app/)                                         | Location       | 🤖         | 🤖          | 🚫       | 🚫            | 🚫              |
| [Google Maps Timeline](https://maps.google.com/timeline)                    | Location       | 🤖         | ⛏️           | ✔️        | 🚫            | 🚫              |
| [Google Fit](https://www.google.com/fit/)                                   | Fitness        | 🛠️+🤖      | ⛏️           | ✔️        | 🚫            | 🚫              | :
| [Biomarker Correlator](https://kovasap.github.io/biomarker-correlator.html) | General Data   | ⛏️          | 🚫          | ✔️        | ✔️             | 🚫              | :
| [Young.ai](https://www.young.ai/)                                           | Health Data    | ⛏️?         | ⛏️?          | ✔️        | ✔️             | ✔️               | :

*ActivityWatch automatic export is [in progress](https://github.com/ActivityWatch/activitywatch/issues/35).


## General Methods

I try to store as much personal data in Google Drive as possible. I find it
convenient to access both manually and programmatically. I've written a program
called ["autojournal"](https://github.com/kovasap/autojournal) to parse data
from my Drive (and some other places) and display it both in graphs (see my
[CGM]({{< relref "/docs/health-and-longevity/continuous-glucose-monitoring.md"
>}}) page) and on my Google
calendar.

For tracing of general information, I've found
[Momentodb](https://mementodatabase.com/) for Android to be super useful. It can
track almost any data type with very few taps, AND it syncs to Google Drive
(Sheets) automatically!

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


## Things to try

 - Mood tracking via heart data: https://upmood.com/
