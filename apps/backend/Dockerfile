FROM node:8.5.0-alpine

COPY . /app
WORKDIR /app

RUN npm install

ENV PORT 3001

WORKDIR /
COPY docker-entrypoint.sh console.sh /
ENTRYPOINT /docker-entrypoint.sh
