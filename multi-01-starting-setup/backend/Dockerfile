FROM node

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80
ENV MONGO_USERNAME=sam
ENV MONGO_PASSWORD=sam

CMD [ "npm", "start" ]