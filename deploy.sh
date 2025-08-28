#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

joker create-index.joke

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Encrypt pages that should be private
# Ideally I should write some code here that finds all the files that were
# generated via symlinks and encrypts only those.
npx staticrypt public/docs/history/family/index.html -d public/docs/history/family
npx staticrypt public/docs/music/music-library-management/index.html -d public/docs/music/music-library-management

# Go To Public folder
cd public
git checkout master
cp ../content/docs/all.edn .

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit --no-verify -m "$msg"

# Push source and build repos.
git push origin master
