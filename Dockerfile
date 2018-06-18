FROM node:0.10.40


RUN mkdir -p /var/www/app
WORKDIR /var/www/app

ADD . /var/www/app/chesshub.io

RUN apt-get update
RUN npm install
RUN bower install

ADD ./config/default.json config/default.json
#ADD ./initData.js initData.js

EXPOSE 3000

CMD node initData.js;
