# Lifelogging

## What?

I define lifelogging as the practice of keeping track of the events in your
life within some kind of physical medium, like a computer's hard drive. The
"Quantified Self" concept is closely related to this, although I see it as
being more specific about what it is focusing on (namely numerical
measurements).

## Why?

There are two primary reasons why lifelogging interests me:

1. Lifelogging promises to provide a perfect record that I could refer back to
   when trying to remember something. Some examples of things that would be
   nice to remember more accurately:
   - The ideas in an engaging conversation
   - The places I was in the last day where I should look for my missing keys
   - The stuff I did during the last week when trying to figure out what
     projects to continue working on.
   - The stuff I did over the last weekend when someone asks "how was your
     weekend?".
1. Finding correlations in, or otherwise analyzing, lifelogging data could lead
to clear insights about which behaviors lead to better health, more desirable
states of mind, and better life outcomes however you want to define them.
   - See my [Tracking Health]({{< relref "/docs/health-and-longevity/tracking-health.md" >}})
   page for more details.

## An Ideal System

The primary issue with lifelogging is that collecting even small amounts of
information consistently can be very time consuming. This is exacerbated if you
are not running a specific experiment on yourself that requires very targeted
collection, but are rather trying to paint a picture of your life that could be
used for more generic analysis and memory-aiding.

Therefore, my ideal lifelogging system would be totally automatic. This could
be achieved with the following components:

 - A GPS monitor logging my location.
   - Done using [GPSLogger](https://gpslogger.app/)
 - Tracking food consumption via photos.
   - Done using [autojournal](https://github.com/kovasap/autojournal) + Google
     Photos.
   - Plan to move to [MomentoDB](https://mementodatabase.com/) for this.
 - A wearable camera that sees what I see and stores the video somewhere.
   - Partially done using a [snapcam]({{< relref "/docs/lifelogging/camera.md"
     >}})
 - A wearable microphone that hears what I hear, and transcribes all heard
   speech to a searchable text log, like a script to the play that is my life.
   - Not done yet, see https://roberdam.com/en/wisper.html
     (https://news.ycombinator.com/item?id=33608437) for prior art!
 - Programs that log what I'm doing on my various devices (laptop, phone,
   etc.).
   - Almost done with [ActivityWatch](https://activitywatch.net/).
   - Previously/currently done with
     [selfspy](https://github.com/selfspy/selfspy).
 - Tracking Exercise
   - Should be inferrable from my location tracking, but I haven't written the
     logic yet.
 - Tracking habit adherence. Like exercise or practicing a skill.
   - I found [proactively assigning myself to do a habit at a specific time]({{<
     relref "/docs/lifestyle-optimizations/task-tracking.md" >}})
     works very well, and this has the added benefit of tracking when I tick
     off my assignment as "done". I use Google Tasks for this, which show up on
     my Google Calendar. Ideally I would write code to save my task data so
     that it could be visualized in other places (and so deleted tasks wouldn't
     disappear from history).
 - Various sensors that track mood and health metrics.
   - Manually done with [MomentoDB](https://mementodatabase.com/), therefore
     not consistent :/
   - Previously done with [Nomie](https://nomie.app/), which IMO is strictly
     worse than MomentoDB.
 - Logic that tries to infer meaningful "events" from the datastreams collected
   by these components. For example, image processing software analyzing my
   camera feed coupled with GPS data could infer that I was playing soccer from
   1-2pm on Saturday.
   - Not done yet
 - A place to store all the collected data.
   - Done with [Google Drive](https://drive.google.com)
 - A calendar or timeline -like visualization system that provides a
   scrollable, searchable way to browse all the generated life events.
   - Partially done with [autojournal](https://github.com/kovasap/autojournal).
   - See [continuous glucose monitoring experiment]({{< relref
     "/docs/health-and-longevity/continuous-glucose-monitoring.md" >}}) for a
     timeline view.
 - A tool that can find correlations in the stored data and in general condense
   it down to insights. Preferably this would be folded into the calendar or
   timeline visualization.
   - Partially done with [biomarker correlator]({{< relref "/biomarker-correlator.html" >}})

An example of what this looks like can be found at
https://miguelrochefort.com/blog/calendar/ (not my system exactly, but very
similar).

## Currently Available Tools

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
 - ✅ = Feature Available


| Tool                                                                        | Specialty      | Data Entry | Data Export | Analysis | DB Comparison | Recommendations |
|-----------------------------------------------------------------------------|----------------|------------|-------------|----------|---------------|-----------------|
| [Cronometer](https://cronometer.com/)                                       | Food           | 🛠️         | 🛠️          | ✅| ✅     | 🚫              |
| [Bitesnap](https://getbitesnap.com/)                                        | Food           | 🛠️         | 🛠️          | ✅| ✅     | 🚫              |
| [SleepAsAndroid](https://sleep.urbandroid.org/)                             | Sleep          | 🛠️+🤖      | 🤖          | ✅| 🚫            | ✅       |
| [MomentoDB](https://mementodatabase.com/)                                   | General Data   | 🛠️         | 🤖          | ✅| 🚫            | 🚫              |
| [ActivityWatch](https://activitywatch.net/)                                 | PC/Phone Usage | 🤖         | 🛠️*         | ✅| 🚫            | 🚫              |
| [Google Drive](https://drive.google.com)                                    | General Data   | ⛏️          | 🤖          | 🚫       | 🚫            | 🚫              |
| [GPSLogger](https://gpslogger.app/)                                         | Location       | 🤖         | 🤖          | 🚫       | 🚫            | 🚫              |
| [Google Maps Timeline](https://maps.google.com/timeline)                    | Location       | 🤖         | ⛏️           | ✅| 🚫            | 🚫              |
| [Google Fit](https://www.google.com/fit/)                                   | Fitness        | 🛠️+🤖      | ⛏️           | ✅| 🚫            | 🚫              | :
| [Biomarker Correlator](https://kovasap.github.io/biomarker-correlator.html) | General Data   | ⛏️          | 🚫          | ✅| ✅     | 🚫              | :
| [Young.ai](https://www.young.ai/)                                           | Health Data    | ⛏️?         | ⛏️?          | ✅| ✅     | ✅       | :

*ActivityWatch automatic export is [in progress](https://github.com/ActivityWatch/activitywatch/issues/35).


### General Methods

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










Categories: [Lifelogging]({{< relref "/" >}}?Lifelogging=true)

Backlinks: [Continuous Glucose Monitoring]({{< relref "/docs/health-and-longevity/continuous-glucose-monitoring.md" >}}), 
[Tracking Health]({{< relref "/docs/health-and-longevity/tracking-health.md" >}}), 
[Camera]({{< relref "/docs/lifelogging/camera.md" >}}), 
[Task Tracking]({{< relref "/docs/lifestyle-optimizations/task-tracking.md" >}}), 
