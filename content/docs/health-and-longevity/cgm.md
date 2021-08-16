# Continuous Glucose Monitoring

Continuous glucose monitoring is really cool because it gives a continuous look
inside your body. This kind of biomarker is rare, and it feels like there is a
lot of info that can be gleaned from this kind of data.

A great article about what CGM might be able to tell us can be found at
https://thedietwars.com/peter-attia-cgm/.

An interesting anecdote about GCM learnings can be found at
https://medium.com/lifetizr/what-i-learned-from-wearing-a-continuous-glucose-monitor-as-a-non-diabetic-bca4c3a9ce28.

## My Usage

I tried out a Freestyle Libre CGM that I was prescribed by my doctor
(surprisingly, it was fully covered by my high-deductible insurance too!). 

I was hoping to see clear correlation between my energy/focus levels and my
blood glucose, but didn't really.

I used [cronometer](https://cronometer.com/) to track my food intake,
Google Fit to track my activity, and [Sleep as
Android](https://sleep.urbandroid.org/) to track my sleep (shown as a blue
shaded background in the plot).

I ingested and visualized my data with my
["autojournal"](https://github.com/kovasap/autojournal) code using this command
line: `poetry run report_generator --start_date=2021-04-09
--end_date=2021-04-22`. 

**[The data visualization can be found here!](/cgm-data.html)**
