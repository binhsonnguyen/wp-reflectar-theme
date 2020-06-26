#!/bin/sh

set -e

cd /home/ubuntu/wordpress/wp-reflectar-theme
git checkout master
git fetch --all
git reset --hard origin/master
docker run --rm -v "$PWD"/src:/app -w /app node:lts npm install
docker run --rm -v "$PWD"/src:/app -w /app node:lts npm run compile:css
docker run --rm -v "$PWD"/src:/app -w /app node:lts npm run compile:rtl
docker run --rm -v "$PWD"/src:/app -w /app composer install
