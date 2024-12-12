# My Personal Website

## Dependencies

 - `git submodule update --init --recursive`
 - `sudo apt install hugo`
 - https://github.com/candid82/joker/releases

## Updating

To update projects hosted on the site:

```
git submodule update --recursive --remote
```

When doing this, try not to update the hugo-book repo, as some new changes break my site.  You can revert changes here via:

```
cd themes/hugo-book
git checkout d86d5e7
cd ../../
git add themes/hugo-book
```

**Make sure you clear your browser cache after updating to see the new code!**

## Development

Run server locally when writing with:

```
hugo server --disableBrowserError
```

## Analytics

See analytics at https://analytics.google.com/analytics/web/#/report-home/a184778596w255183429p234174405
