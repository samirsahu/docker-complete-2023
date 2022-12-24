# docker-complete-2023
## https://gale.udemy.com/course/docker-kubernetes-the-practical-guide

### Build Docker Image:
docker build -t feedback-node:1.0 .

### Run Docker Container:
docker run -p 80:80 -d --rm --name feedback-node -v feedback:/app/feedback feedback-node:1.0

docker run -p 80:80 -d --rm --name feedback-node -v feedback:/app/feedback -v $(pwd):/app -v /app/node_modules feedback-node:1.0
