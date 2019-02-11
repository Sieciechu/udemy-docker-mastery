FROM node:9-alpine

RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN apk add --update tini && npm install && npm cache clean --force

EXPOSE 3000

CMD [ "tini", "node ./bin/www"]
