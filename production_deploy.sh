#!/bin/sh

cd /home/ubuntu/wordpress/wp-reflectar-theme || exit
git pull
cd src || exit
docker run --rm -v "$PWD":/app -w /app node:lts npm install
docker run --rm -v "$PWD":/app -w /app node:lts npm run compile:css
docker run --rm -v "$PWD":/app -w /app node:lts npm run compile:rtl
docker run --rm -v "$PWD":/app -w /app composer install
