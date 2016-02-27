# Dockerized Node.js

This Dockerfile creates a stock Node.js server using the minimal Alpine Linux image by Gliderlabs.

## Bootstrap

    $ docker run --rm -v $PWD:/opt dev/node node --version

    $ docker run --rm -v $PWD:/opt dev/node npm --version

## License

Released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

(c)2015 [Cristian R. Arroyo](mailto:cristian.arroyo@vivaserver.com)
