FROM alpine:latest

ADD ./ /opt/src
WORKDIR /opt/src

RUN apk update && apk add build-base curl git g++ imagemagick xclip sdl-dev mesa-dev make libpng-dev nano

RUN ./docker/fetch-and-compile.sh

EXPOSE 8005

CMD /bin/sh /opt/src/docker/run-server.sh
