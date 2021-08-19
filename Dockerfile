#stage 1

FROM node:latest as build-step

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN npm install

RUN npm run build

#stage 2

FROM nginx:1.17.1-alpine


COPY --from=build-step /app/build /usr/share/nginx/html
