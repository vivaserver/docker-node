# Build a "slim/node" image from this Dockerfile using:
#   $ docker build . -t slim/node

FROM node:8-slim
MAINTAINER cristian.arroyo@vivaserver.com

# provides node 8.11.3, npm 5.6
# RUN apk add --update git gcc python make nodejs nodejs-npm rsync && rm -rf /var/cache/apk/*
RUN apt-get -qq update && apt-get -qq install nodejs rsync && apt-get -qq clean && rm -f /var/lib/apt/lists/*_*

# run app as node user, not root
# RUN adduser -s /bin/sh -u 1001 -G root -h /opt -S -D node && chown -R node /opt
# USER node

WORKDIR /opt

EXPOSE 5000
