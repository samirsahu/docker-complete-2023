docker build -t feedback-node:1.0 .

docker run \
    -p 80:80 \
    -d \
    --rm \
    --name feedback-node \
    -v $(pwd):/app:ro \
    -v $(pwd)/feedback:/app/feedback \
    -v /app/temp \
    -v /app/node_modules \
    feedback-node:1.0
