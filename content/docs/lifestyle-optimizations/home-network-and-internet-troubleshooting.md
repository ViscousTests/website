# Internet and Home Network Troubleshooting

## Lag when playing games

When downloading stuff and playing games at the same time, the game's packets
can be queued behind the download's packets, causing lag.  This can be measured
with this test: https://www.waveform.com/tools/bufferbloat. QoS and SQM are
router features that can be enabled from the router's web interface that are
supposed to help with this.
https://www.bufferbloat.net/projects/bloat/wiki/What_can_I_do_about_Bufferbloat/
is another good resource.

Another thing to try is to run `ping <your-routers-ip> -t` in a windows cmd
prompt. This measures the latency between your computer and the router - if
this is high, then something internal to the network may be causing the
latency.

Categories: [Lifestyle Optimizations]({{< relref "/" >}}?Lifestyle-Optimizations=true)