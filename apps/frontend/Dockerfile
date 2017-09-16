FROM node:8.5.0

COPY . /frontend
WORKDIR /frontend
RUN npm install && npm run build


FROM httpd:2.2-alpine

ENV BACKEND_URL ___change_me___

COPY --from=0 /frontend/build/ /usr/local/apache2/htdocs/
COPY run.sh /

WORKDIR /
CMD ./run.sh
