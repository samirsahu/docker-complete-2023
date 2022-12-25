FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=sam
ENV MONGODB_PASSWORD=sam

CMD ["npm", "start"]