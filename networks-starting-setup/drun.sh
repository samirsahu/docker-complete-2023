#!/bin/zsh

docker network create fav-net

docker run \
    -d \
    --rm \
    --name mongodb \
    --network fav-net \
    mongo

docker run \
    -p 3000:3000 \
    -d \
    --rm \
    --name favorite \
    --network fav-net \
    favorite:1.0
