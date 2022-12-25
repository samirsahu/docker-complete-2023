#!/bin/zsh

# docker network create fav-net
docker run --name goals-db --rm -d -p 27017:27017 mongo

docker run \
    -p 80:80 \
    -d \
    --rm \
    --name goals-node \
    goals-node:1.0

docker run \
    -p 3000:3000 \
    -d \
    -it \
    --rm \
    --name goals-react \
    goals-react:1.0