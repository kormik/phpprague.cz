#!/usr/bin/env bash

# Manual - http://wouterj.nl/2015/02/using-travis-to-build-your-sculpin-blog

# Build settings
REPOSITORY="https://${GH_TOKEN}@github.com/PhpPrague/PhpPrague.cz.git"

# Git identity
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis"

# Generate API
./vendor/bin/sculpin generate --env=prod
# Commit & push
cd output_prod
git init
git add .
git commit -m "Regenerated output"
git push --force --quiet "${REPOSITORY}" master:gh-pages
 #> /dev/null 2>&1
