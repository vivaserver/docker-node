# Build a "dev/node" image from this Dockerfile using:
#   $ docker build . -t dev/node

FROM gliderlabs/alpine:3.6
MAINTAINER cristian.arroyo@vivaserver.com

# provides node 6.10.3, npm 3.10.10
RUN apk add --update git nodejs nodejs-npm rsync && rm -rf /var/cache/apk/*

# Disabling npm's progress bar yields a 2x npm install speed improvement
# https://twitter.com/gavinjoyce/status/691773956144119808
RUN npm set progress=false

# install some base packages
RUN npm install -g browserify
# RUN npm install -g less
# RUN npm install -g less-plugin-clean-css
# RUN npm install -g jshint
# RUN npm install -g minifyify
# RUN npm install -g uglifyify

WORKDIR /opt

EXPOSE 5000
