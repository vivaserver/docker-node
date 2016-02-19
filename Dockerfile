FROM gliderlabs/alpine:3.2
MAINTAINER cristian.arroyo@vivaserver.com

# provides Node 0.12.9, NPM 2.14.9
RUN apk add --update nodejs git
RUN rm -rf /var/cache/apk/*

# Disabling npm's progress bar yields a 2x npm install speed improvement
# https://twitter.com/gavinjoyce/status/691773956144119808
RUN npm set progress=false

RUN npm install -g browserify
RUN npm install -g bower
RUN npm install -g less
RUN npm install -g less-plugin-clean-css
RUN npm install -g jshint

WORKDIR /opt

EXPOSE 5000
