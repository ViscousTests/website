---
backlinks-set: #{"content/docs/lifelogging/camera.md" "content/docs/lifestyle-optimizations/daily-habits.md"}
categories-set: #{"Lifelogging"}
---
# 2025 Lifelogging Update

Someone on Reddit working on developing a new lifelogging product reached out to
me to help guide their work.
Here are my responses to their survey on March 28, 2025:

**How did you first discover lifelogging, and how has it changed your day-to-day life?**

I don't remember a specific event, but I slowly started finding myself aware
that many events/experiences in my life were very ephemeral.
They would happen and then be forgotten; I would have nothing to "show" for my
time spent.
Occasionally I would even notice myself repeating behaviors or attempting things
that I had tried in the past and never learned from, leading to the same
outcome.

This would often manifest when people asked me what I'd been up to lately, and I
would struggle to respond coherently.

I found both the ephemerality and forgetting very dissatisfying.
It made me feel like my time spent was wasted, or at least not fully utiltized.

I saw lifelogging as a way to make me feel better about this.

Generally speaking, my lifelogging has worked at achieving this goal.
Now, when I'm curious, it's a lot easier for me to go back in my logs and
remember specific events, even those that have long passed.

**Could you describe your current lifelogging workflow? (Please cover: devices used, scenario selection, post-processing, data storage, and long-term use cases.)**

I currently use Mementodb on my phone and computer to log notable events that
happen during the day.
I usually log 1-3 events per day.
Each log is a line or two of text, with some categorization tags and a general
positive-negative rating of the event.
I go back and read this log when I feel like it, and am consistently surprised
by how well it sparks vivid memories of even long past events.

I use my own tool https://github.com/kovasap/autojournal-on-gas to collect
information from ActivityWatch running on my computers, and a location logging
app on my phone, to pull information about what I'm up to into my Google
calendar to a visual representation of my activity.
It also sends me emails summarizing my Mementodb lifelog, and puts the events on
my calendar as well.
This tools runs automatically in the background via Google Apps Script.
I have been actively using this tool less in recent times, but occasionally I'll
look at the calendar to remember stuff.
Unfortunately, my computer logging has recently broken and I haven't been
motivated to fix it (it's probably a simple issue).

I have a program regularly take screenshots of my computer screen and upload
them to Google photos.
This is described at
https://github.com/kovasap/dotfiles?tab=readme-ov-file#automatic-screenshooting.

I have a recurring reminder on my phone to take a picture of the real world,
which is then stored in google photos.

[My "Daily Habits" page]({{< relref
"/docs/lifestyle-optimizations/daily-habits.md" >}}) should have an up to date
"lifelogging" section that may change in the future with what I actually do.
I never plan to update this page (it is a snapshot).

**What is the biggest challenge you face in your lifelogging process? How do you currently handle it?**

One of the biggest challenges I did face was motivating myself to do manual
logging.
My big breakthrough was to focus on logging the things that made me feel most
passionate and treat the logging as a conversation with another person (and only
log things I felt were worth sharing with that hypothetical person).
With this perspective, logging is much easier now.

I tried [rolling my own automatic camera lifelogging system]({{< relref
"/docs/lifelogging/camera.md" >}})), but managing the mass volume of data from
the camera was too hard.
The Narrative Clip, which I tried afterward, was amazingly better.
Too bad they shut the service down or I would be still using it.

I was also very motivated for a time to find a way to have a microphone record
me at all times and translate all the conversations I had to a text "script".
I could never figure out how to technically accomplish this, but would be super
excited to try a solution here.
I feel that lifelogging can have a data volume problem, but a simple text script
of your day I think would be very easy to read/digest/postprocess compared to
other forms of lifelogging data.

**Do you have any memorable lifelogging-related stories you’d like to share with us?**

Not specifics, but as stated earlier I am consistently amazed at how vivid the
memories my lifelog triggers can be, even of very old events.

**We’ve designed a lifelogging device with the following specs:**

 - Weight: ~30g (wearable/clippable)
 - Features: Interval photo/video, audio recording. etc
 - Battery life: ~2 days
 - AI integration: Auto-categorization & video clipping

**Would you be willing to use this product? Do you see any potential shortcomings?**

Yes definitely!

I worry that the data generated will need to be stored somewhere, which will
lead to a monthly subscription fee requirement.
I would much rather have an option to aggressively cull data, pay a larger
upfront fee, or manage my own data somehow than need to pay a subscription.

**Which features interest you most, or features you want that we didn't provide?**

As noted above, if you can do speech-to-text and output a script of each day
from the microphone that would be amazing!

**What's your top concern regarding this product/system? (privacy? storage?)**

Managing data storage.