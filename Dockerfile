FROM ubuntu:latest

ADD ./ /opt/src
WORKDIR /opt/src

RUN apt-get update && apt-get install curl git g++ imagemagick xclip libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev make libpng12-dev -y
RUN ./docker/fetch-and-compile.sh
EXPOSE 8005
 
#CMD sleep 60000

CMD /opt/src/OneHourOneLife/OneLife/server/OneLifeServer
