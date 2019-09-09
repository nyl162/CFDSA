# select base image
FROM node:latest

LABEL name="northwindapp"
LABEL maintainer="ngyitleong@hotmail.com"

ENV DB_HOST=mydb
ENV DB_PORT=3306
ENV APP_PORT=3000
ENV APP_DIR=/app

WORKDIR ${APP_DIR}

# ADD . . <--alternative
ADD package.json .
ADD package-lock.json .
ADD main.js .
ADD config config
ADD public public
ADD views views

# install dependency
RUN npm install

# expose the port 3000
EXPOSE ${APP_PORT}

# start the app
ENTRYPOINT ["node", "main.js"]