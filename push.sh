#!/bin/sh


git pull
cp -r ../book/* ./
cp ../README.md ./
cp ../CNAME ./
git status
git add .
day=$(date +"%Y-%m-%d")
git commit -m "$day"
git push
