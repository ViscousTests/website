# Lifelogging with a Camera

Used the [iON Snapcam](https://amzn.to/3JqQ6kA).

Requires this third party software to enable the time lapse:
https://github.com/dimhoff/snapcamcontrol. Use a version hosted on this site
[here](/snapcamcontrol.html).

The beeping when taking a picture is really annoying, see
https://www.reddit.com/r/ElectronicsRepair/comments/tzmesl/how_to_silence_a_beeping_speaker_on_a_circuit/
for how to disable.

TODO update this post
https://www.reddit.com/r/QuantifiedSelf/comments/toxmbd/looking_for_simple_cheap_wearable_camera_that_can/
with a link to this page.

## Memory usage

My snapcam has a 8MP camera mode and a 2MP one.  The 2MP images are ~340 kB in
size, and the 8MP ones are ~1.1MB. The 2MP images seem to be less effected by
motion blur.  If I use 2MP images, and take one every 30 seconds, then I would
need:

```
1/1000000 GB/kB * 340 kB/pic * 1/30 pic/sec * 3600 sec/hour * 16 hours/wakingDay = 0.65 GB/day = 238 GB/year
```

Or around `116 GB/year` if a took a picture every minute.
