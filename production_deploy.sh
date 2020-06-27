#!/bin/sh

set -e

cd /home/ubuntu/wordpress/wp-reflectar-theme
git checkout master
git fetch --all
git reset --hard origin/master
