#!/bin/sh

# If a command fails then the deploy stops
set -e

shopt -s globstar

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

for file in private-website-pages/content/**/*; do
	if [[ -f "$file" ]]; then
		file_with_first_two_dirs=$(cut -d'/' -f4- $file)
		cp --verbose $file $file_with_first_two_dirs
	fi
done

joker create-index.joke

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

for file in private-website-pages/content/**/*; do
	if [[ -f "$file" ]]; then
		file_with_first_two_dirs=$(cut -d'/' -f4- $file)
		echo "Encrypting public/${file_with_first_two_dirs%.md}/index.html to public/${file_with_first_two_dirs%.md}"
		npx staticrypt public/${file_with_first_two_dirs%.md}/index.html \
			-d public/${file_with_first_two_dirs%.md} \
			-p $(cat private-website-pages/password.txt)
	fi
done

exit 0

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
git commit --no-verify -m "$msg"

# Push source and build repos.
git pull -X ours
git push origin master
