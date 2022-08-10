FROM nginx
COPY . /usr/share/nginx/html
EXPOSE 80

FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY runaway.jar runaway.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar runaway.jar
