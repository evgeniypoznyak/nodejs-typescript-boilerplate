# pushing code to Docker cloud:
# docker build -t YOUR_DOCKER_NAME/YOUR_CONTAINERNAME . && docker push YOUR_DOCKER_NAME/YOUR_CONTAINERNAME

# run and test locally:
# docker run -p YOUR_HOST_NUMBER:YOUR_PORT -d --env-file ./.env --name YOUR_CONTAINER_NAME YOUR_DOCKER_NAME/YOUR_CONTAINERNAME

# todo: this file need improvements!
FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build-ts
EXPOSE 80
CMD [ "node", "./dist/app.js" ]
