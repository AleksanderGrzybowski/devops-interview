FROM node:8.5.0-alpine

COPY . /app
WORKDIR /app

RUN npm install

ENV PORT 3001
CMD ["npm", "start"]
