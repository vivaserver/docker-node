FROM gliderlabs/alpine:3.2
MAINTAINER cristian.arroyo@vivaserver.com

RUN apk add --update nodejs git
RUN rm -rf /var/cache/apk/*

# Disabling npm's progress bar yields a 2x npm install speed improvement
# https://twitter.com/gavinjoyce/status/691773956144119808
RUN npm set progress=false

RUN npm install -g browserify
RUN npm install -g bower
RUN npm install -g less
RUN npm install -g less-plugin-clean-css

WORKDIR /opt

EXPOSE 5000
