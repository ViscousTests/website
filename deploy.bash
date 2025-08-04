#!/bin/bash

# If a command fails then the deploy stops
set -e

shopt -s globstar

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

for file in private-website-pages/content/**/*; do
	if [[ -f "$file" ]]; then
		cp --verbose $file ${file#private-website-pages/}
	fi
done

./joker create-index.joke

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

# Go To Public folder
cd public
git checkout master -f
cp ../content/docs/all.edn .

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
# Commit with special username and no email.  Without this running under GitHub
# Actions fails.
git commit --no-verify -m "$msg" --author "Deployer <>"

# Push source and build repos.
git pull -X ours
git push origin master
