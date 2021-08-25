<<<<<<< HEAD
FROM node:14-alpine as build-step
=======
#stage 1

FROM node:latest as build-step
>>>>>>> 35d06c38558fa3a8ceea32503f425efa2e306d57

RUN mkdir /app
WORKDIR /app
COPY package*.json /app/

RUN npm install
<<<<<<< HEAD
COPY . /app
=======
>>>>>>> 35d06c38558fa3a8ceea32503f425efa2e306d57

RUN npm run build

#stage 2

FROM nginx:1.17.1-alpine


COPY --from=build-step /app/build /usr/share/nginx/html
