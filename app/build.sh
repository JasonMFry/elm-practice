#!/usr/bin/env sh
set -o errexit -o xtrace

elm make \
  src/Main.elm \
  --debug \
  --output public/app.js

node-sass styles/styles.scss --output public