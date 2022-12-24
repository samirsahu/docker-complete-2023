#!/bin/zsh

docker run \
    -p 8080:8080 \
    -d \
    --rm \
    --name feedback-node-dev \
    -v "feedback:/app/feedback" \
    -v "$(pwd):/app" \
    -v /app/node_modules \
    -v /app/temp \
    feedback-node:dev

docker run \
    -p 80:80 \
    -d \
    --rm \
    --name feedback-node-prod \
    -v "feedback:/app/feedback" \
    -v "$(pwd):/app" \
    -v /app/node_modules \
    -v /app/temp \
    feedback-node:prod

# docker run \
#     -p 80:80 \
#     -d \
#     --rm \
#     --name feedback-node \
#     --env-file .env \
#     -v "feedback:/app/feedback" \
#     -v "$(pwd):/app" \
#     -v /app/node_modules \
#     -v /app/temp \
#     feedback-node:arg