#!/usr/bin/env sh

# abort on errors
set -e

# go to project dir
cd /home/pkmn/pkmn/portfolio/project/build

# copy build folder to parent dir
cp -r * ../../
cp .build.manifest ../../
cp .packages ../../

echo "Success, push to origin to deploy"
