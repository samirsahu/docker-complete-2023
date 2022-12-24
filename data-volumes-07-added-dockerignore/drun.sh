#!/bin/zsh

docker run \
    -p 80:80 \
    -d \
    --rm \
    --name feedback-node \
    --env PORT=80 \
    -v "feedback:/app/feedback" \
    -v "$(pwd):/app" \
    -v /app/node_modules \
    -v /app/temp \
    feedback-node:env

# docker run \
#     -p 80:80 \
#     -d \
#     --rm \
#     --name feedback-node \
#     -env PORT=80
#     -v "feedback:/app/feedback" \
#     -v "$(pwd):/app" \
#     -v /app/node_modules \
#     -v /app/temp \
#     feedback-node:env
