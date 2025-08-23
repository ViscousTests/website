# Game Troubleshooting

## Steam Launch Options

All added before `%command%` unless otherwise specified.

### Linux Audio Crackling

Add `PULSE_LATENCY_MSEC=60`

### Reduce Number of CPU Cores Used

`taskset -c 0,2,4,6` to run on 4 (specific) cores.
