#!/bin/sh

cd /home/ubuntu/wordpress/wp-reflectar-theme || exit
git pull
cd src || exit
docker run --rm -it -v "$PWD":/app -w /app composer install
docker run --rm -it -v "$PWD":/app -w /app node:lts npm install
docker run --rm -it -v "$PWD":/app -w /app node:lts npm run compile:css
