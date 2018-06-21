#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

SOURCE_BRANCH="master"
TARGET_BRANCH="gh-pages"

function doCompile {
	gitbook install && gitbook build
	gitbook pdf ./ ./_book/${BOOK}.pdf
}

# Pull requests and commits to other branches shouldn't try to deploy, just build to verify
if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ]; then
	echo "Skipping deploy; just doing a build."
	doCompile
	exit 0
fi

# Save some useful information
SHA=`git rev-parse --verify HEAD`
REPO=`git config remote.origin.url`
TOKEN_REPO=${REPO/:\/\//:\/\/${GITHUB_TOKEN}@}

# Run our compile script
doCompile

# Commit the "changes"
AUTHOR_NAME="$(git log -1 --pretty=format:'%an') (from Travis CI)"
AUTHOR_EMAIL="$(git log -1 --pretty=format:'%ae')"
cd _book
git init
git config user.name "${AUTHOR_NAME}"
git config user.email "${AUTHOR_EMAIL}"
git add .
git commit -m "Deploy to GitHub Pages: ${SHA}"

git push --force --quiet ${TOKEN_REPO} master:${TARGET_BRANCH} > /dev/null 2>&1
