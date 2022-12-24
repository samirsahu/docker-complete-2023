#!/bin/zsh

docker build \
    -t feedback-node:dev \
    --build-arg DEFAULT_PORT=8080 \
    .

docker build \
    -t feedback-node:prod \
    --build-arg DEFAULT_PORT=80 \
    .