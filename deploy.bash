#!/bin/bash

# If a command fails then the deploy stops
set -e

shopt -s globstar

echo "git log"
git log --pretty=format:"%s %ct" -n 10

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

if [[ -n "$GITHUB_WORKFLOW" ]]; then
  echo "Running in GitHub Actions Workflow, GitHub Pages repository should already be cloned!"
else
  echo "Cloning fresh GitHub Pages repository..."
  if [[ -f public ]]; then
    rm -r public
  fi
  git clone git@github.com:kovasap/kovasap.github.io.git public/
fi

for file in private-website-pages/content/**/*; do
  if [[ -f "$file" ]]; then
    cp --verbose $file ${file#private-website-pages/}
  fi
done

echo "git log"
git log --pretty=format:"%s %ct" -n 10

./joker create-index.joke

echo "git log"
git log --pretty=format:"%s %ct" -n 10

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

for file in private-website-pages/content/**/*; do
  if [[ -f "$file" ]]; then
    file_starting_at_docs=${file#private-website-pages/content/}
    echo "Encrypting public/${file_starting_at_docs%.md}/index.html to public/${file_starting_at_docs%.md}"
    npx staticrypt public/${file_starting_at_docs%.md}/index.html \
      -d public/${file_starting_at_docs%.md} \
      -p $(cat private-website-pages/password.txt)
  fi
done

echo "git log"
git log --pretty=format:"%s %ct" -n 10

# Go To Public folder
cd public
cp --verbose ../content/docs/all.edn .

echo "git log"
git log --pretty=format:"%s %ct" -n 10

# Add changes to git.
git add --verbose .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
  msg="$*"
fi
git commit --no-verify -m "$msg"

# Push source and build repos.
git push origin master
