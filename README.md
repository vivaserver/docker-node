# Dockerized Node.js

This Dockerfile creates a stock Node.js server using the minimal Alpine Linux image by Gliderlabs.

## Usage

Both multiple Node versions are available switching the Alpine image being used (tagged on the repository):

    $ git tag -ln
    0.12            provides node 0.12.9, npm 2.14.9
    4.3             provides node 4.3.0, npm 2.14.12
    6.7             provides node 6.7.0, npm 3.10.3

Then:

    $ git checkout 0.12
    $ docker build -t dev/node:0.12 .
    ...

or

    $ git checkout 4.3
    $ docker build -t dev/node:4.3 .
    ...

## Bootstrap

    $ docker run --rm -v $PWD:/opt dev/node node --version

    $ docker run --rm -v $PWD:/opt dev/node npm --version

## License

Released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

(c)2015 [Cristian R. Arroyo](mailto:cristian.arroyo@vivaserver.com)
