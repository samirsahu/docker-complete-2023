docker build -t feedback-node:vol .

docker run \
    -p 80:80 \
    -d \
    --rm \
    --name feedback-node \
    -v "feedback:/app/feedback" \
    -v "$(pwd):/app" \
    -v /app/node_modules \
    -v /app/temp \
    feedback-node:vol