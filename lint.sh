#!/bin/sh

set -e

docker run --rm -v "$PWD"/src:/app -w /app node:lts npm run lint:scss
docker run --rm -v "$PWD"/src:/app -w /app node:lts npm run lint:js
docker run --rm -v "$PWD"/src:/app -w /app composer lint:wpcs
docker run --rm -v "$PWD"/src:/app -w /app composer lint:php