FROM ubuntu:latest

MAINTAINER lokarajdev <rajdevops569@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt=get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

add index.js /usr/apps/hello-docker/index.js

CMD["http-server","-s"]
