# My Personal Website

## Dependencies

 - `git submodule update --init --recursive`
 - `sudo apt install hugo`
 - `npm install staticrypt`
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

**And make sure that the projects you have updated have been "deployed" (they
have built javascript in a directory in their repositories).
Usually there is a script in each project that does this.**

## Encrypted Pages

To add encrypted pages:

1. Make sure your encrypted data is in a private git repository that is added as
   a submodule of this repository.
2. Make a symlink like `ln submodule/path/to/your/file.md
   content/docs/.../file.md`.
3. Add a line to `deploy.sh` that encrypts your file.
4. For now, add a line to the `is-symlink?` function in `create-index.joke` that
   identifies your file.
5. Supply your desired password whenever running `deploy.sh`.

## Development

Run server locally when writing with:

```
hugo server --disableBrowserError --disableFastRender --poll 1000
```

The poll option is necessary to detect changes to files link to with symlinks.

## Analytics

See analytics at https://analytics.google.com/analytics/web/#/report-home/a184778596w255183429p234174405

## Adding Images

Sometimes images will not show up (you will get a 404 error) if you do not add
an `index.md` file to the directory containing the image.
This is a hugo quirk.
