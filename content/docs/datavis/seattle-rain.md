---
plotly: true
---

# Rain in Seattle

As I've experienced Seattle weather day to day, my mind has come up with random
theories for periods of the day (morning, afternoon) when it rains the
most/least. This is important to me enough to think about because I commute by
bike. Dodging the rain is really nice when possible so that I don't get as wet
on the way to work.

**Unfortunately, there doesn't seem to be much correlation at all with time of
day and precipitation.** Read on to see how I discovered this...

## Data

I thought I'd try answering the question once and for all by looking at some
weather station data.  I first tried getting data via this service:
https://www.ncdc.noaa.gov/cdo-web/datasets.  Unfortunately, the data I got was
pretty inconsistent. I talked to a meteorologist from NOAA via their help email
and was redirected to some [beta
data](https://www1.ncdc.noaa.gov/pub/data/hpd/auto/v2/beta/15min/). For this
data, I needed to pick a station, so I looked in the `hpd-stations-inventory`
file and found a list of Washington stations with coordinates. I loaded these
up using [Google Maps](https://webapps.stackexchange.com/a/102780) and found
that the Everett station was the closest one to Seattle (there was no station
in Seattle proper 🙁). Then I found and downloaded the file corresponding to
this station ID (USC00452675).

## Analysis

I analyzed the data using plotly with [this
code](https://github.com/kovasap/weather-data). This code calculates the
probability that it will rain in all the historical data during any given
15-minute interval and plots that number, with error bars given as the standard
deviation.  I first did data from 2019-2021 for speed of processing...

{{< plotly json="/USC00452675.15m.2019-2021.csv.json" height="1800px" >}}

...and I saw some trends! Especially in August and July it looked like it
didn't ever rain in the afternoon. This got me excited to think I'd learned
something, so I ran with more data (2000-2021)...

{{< plotly json="/USC00452675.15m.2000-2021.csv.json" height="1800px" >}}

...and everything averaged out 😦. 











Categories: [Datavis]({{< relref "/" >}}?Datavis=true)

Backlinks: 