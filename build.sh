#!/bin/bash

# shutdown containers
docker compose down

# update
if [ $# -ne 1 ]; then
  git submodule foreach git checkout $1
  git submodule foreach git fetch
  git submodule foreach git pull origin $1
else
  git submodule foreach git checkout main
  git submodule foreach git fetch
  git submodule foreach git pull origin main
fi

# start
docker compose up -d

# logs
docker compose logs -f