#!/bin/zsh

docker network create goals-net

docker run \
    --name goals-db \
    --rm \
    -d \
    --env MONGO_INITDB_ROOT_USERNAME=sam \
    --env MONGO_INITDB_ROOT_PASSWORD=sam \
    -v goals-data:/data/db \
    --network goals-net \
    mongo

docker run \
    --name goals-node \
    -p 80:80 \
    -d \
    --rm \
    --network goals-net \
    --env MONGO_USERNAME=sam \
    --env MONGO_PASSWORD=sam \
    -v "$(pwd)/backend:/app" \
    -v goals-node-logs:/app/logs \
    -v /app/node_modules \
    goals-node:2.0

docker run \
    -p 3000:3000 \
    -d \
    --rm \
    -it \
    --name goals-react \
    -v "$(pwd)/frontend:/app" \
    -v /app/node_modules \
    goals-react:2.0
