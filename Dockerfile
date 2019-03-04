FROM openjdk:8

RUN mkdir /files
WORKDIR /files
CMD bash start.sh

