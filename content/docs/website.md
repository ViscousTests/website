# This Website

This website was setup using
[Hugo](https://gohugo.io/getting-started/quick-start) and is hosted using
[Github](https://github.com/).  It uses the
[hugo-book](https://github.com/alex-shpak/hugo-book) theme.  Originally, it was
started by copying the example project in the hugo-book repository, and
modifying the pages.  

I also added Google Analytics to the site via the `googleAnalytics` field in
the `config.yaml` file - the hugo-book theme handles the rest.  I also needed
to make a Google Analytics account with a "Universal Analytics" property as
described at https://support.google.com/analytics/answer/10269537.  Hugo
doesn't seem to support the newer "Measurement ID" created when making a
standard analytics property.

Cool tips to check out for improvement:

  - https://gohugo.io/content-management/shortcodes/#figure
  - https://tkainrad.dev/posts/using-hugo-gitlab-pages-and-cloudflare-to-create-and-run-this-website/
