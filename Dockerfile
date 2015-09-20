FROM gliderlabs/alpine:3.2
MAINTAINER cristian.arroyo@vivaserver.com

RUN apk add --update nodejs
RUN rm -rf /var/cache/apk/*

RUN npm install -g browserify
RUN npm install -g bower
RUN npm install -g less

WORKDIR /opt

EXPOSE 5000
