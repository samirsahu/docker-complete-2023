#!/bin/zsh

docker network create goals-net

docker run \
    --name goals-db \
    --rm \
    -d \
    --network goals-net \
    mongo

docker run \
    --name goals-node \
    -p 80:80 \
    -d \
    --rm \
    --network goals-net \
    goals-node:1.0

docker run \
    -p 3000:3000 \
    -d \
    -it \
    --rm \
    --name goals-react \
    goals-react:1.0