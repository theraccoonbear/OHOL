FROM ubuntu:latest

ADD ./ /opt/src
WORKDIR /opt/src

RUN apt-get update && apt-get install curl git g++ imagemagick xclip libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev make libpng12-dev nano -y
ARG TICKET_ID
ENV TICKET_ID=${TICKET_ID}
RUN ./docker/fetch-and-compile.sh
EXPOSE 8005

CMD /opt/src/docker/run-server.sh
