#!/usr/bin/env sh
set -o errexit -o xtrace
test ! -d /app/node_modules && (cd /app/ && npm install)
rm -f -r elm-stuff
watchy \
  --watch 'elm.json' \
  --watch 'src/**/*.elm' \
  --watch 'styles/**/*.scss' \
  --watch 'elm-analyse.json' \
  -- "$@"
