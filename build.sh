#!/bin/bash
# shutdown containers
docker compose down

# update
git submodule foreach git checkout develop
git submodule foreach git fetch
git submodule foreach git pull origin develop

# start
docker compose up -d

# logs
docker compose logs -f