FROM node:20

WORKDIR /usr/src/app

COPY . .

ENV DEBUG=part12-containers-applications-main:*

CMD npm start
