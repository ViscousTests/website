# Music Library Management

## Accumulation History

I have a large music library I've accumulated over the years.

Initially, it was formed by mp3s captured with a program called
[ReplayMusic](https://applian.com/replay-music/), which just recorded music
played by your computer.
Using this program with Pandora or other free music services was an effective
way to build up a little library.

I then started checking out CDs en-masse from the local library, and ripping
them to add to my collection.
I was very particular about getting them in a lossless flac format, which lead
to my library total size on disk growing very large.

I had a friend who was really into dubstep and UK electronic music at the time,
and merged his library into mine.

I then started getting into some smaller indie artists who didn't have CDs at
the library, so I switched to getting a lot of music off of bandcamp (mainly
with [this
script](https://github.com/kovasap/dotfiles/blob/master/bin/bandcamp-dl-artist.bash)).

Most recently, I discovered SoulSeek, which has a great Android app.
I use this to get music I can't find anywhere else.

## Usage History

I used to use a Zune to listen to my collection.
It had a spinning disk inside it that could store all my large music.
It also had a cool bag and could play a game called Hexic, which was fun.

At a certain point, I realized I could not tell the difference between flac and
320 kbps mp3, so I just converted everything down.
Then let me fit everything into a 200 GB Google Drive plan.
I used CloudPlayer on Android to listen to this, which was a great system.

Soon enough, I started running out of space on my Google Drive, and the next
plan to upgrade to was 2TB, which was way overkill for me.
This led me to start storing all my music on local drives again, which had the
added benefit of not requiring and internet connection or cached files to
listen.

## Current Setup

Right now I store two clones of my music library, one on my desktop computer,
and one on an SD card inside my Android phone.
The two libraries and kept in sync with one other via syncthing, which works
incredibly well.
Way way better than a program called SyncToy I used to use for this purpose a
long long time ago.

Whenever I get new music from any source, I dump it directly into Google Drive.
The gdrive CLI is really good for this.
Then I use a program called DriveSync on Android to sync any new stuff from my
drive to my library on the SD card.
Then syncthing moves it to my desktop.
DriveSync is also good at moving new music to Google Drive, in case I get it on
my phone initially.

On my desktop, I use Strawberry to listen to my music; on my phone I use
Musicolet.
