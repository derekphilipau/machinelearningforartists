#!/usr/bin/env sh

# abort on errors
set -e

cd docs/

# build
npm run docs:build

# navigate into the build output directory
cd .vuepress/dist

# if you are deploying to a custom domain
# echo 'help.glazy.org' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:derekphilipau/machinelearningforartists.git master:gh-pages

cd -
