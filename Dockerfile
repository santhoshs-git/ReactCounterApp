#stage 1
FROM node:14.17-alpine3.14 as build-step
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm -g install npm@6.14.3
RUN npm install
RUN npm build


#stage 2
FROM nginx:1.17.1-alpine
COPY --from=build-step /app/build /usr/share/nginx/html

