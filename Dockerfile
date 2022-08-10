FROM openjdk:8-jdk-alpine
FROM nginx
LABEL author: abdullahkimrigh

VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS

COPY . /usr/share/nginx/html

EXPOSE 80
EXPOSE 3000

ENTRYPOINT exec java $JAVA_OPTS -jar runaway.jar
