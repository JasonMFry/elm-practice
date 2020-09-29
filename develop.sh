#!/usr/bin/env sh
set -o errexit -o xtrace

docker-compose build --parallel
exec docker-compose up --no-build --force-recreate --remove-orphans