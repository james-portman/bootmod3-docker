FROM openjdk:8

RUN mkdir /files

# Download link provided by the bootmod3 developers
RUN wget https://www.dropbox.com/s/9yijelmovy8jcy5/agent.jar?dl=1 -O /files/agent.jar
WORKDIR /files
CMD java -jar agent.jar

