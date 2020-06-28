#!/bin/sh

set -e

cd /home/ubuntu/wordpress/wp-reflectar-theme
git fetch --all
git checkout master
git reset --hard origin/master
