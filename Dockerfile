FROM alpine:latest

COPY ./server.jar /home/
COPY ./eula.txt /
COPY ./server.properties /

RUN ["apk", "--update", "add", "openjdk8-jre"]
RUN ["/usr/bin/java", "-version"]
RUN ["echo", "\n\n"]

CMD ["/usr/bin/java", "-Xmx4096M", "-Xms4096M", "-jar", "/home/server.jar", "nogui"]

# Port 25565
