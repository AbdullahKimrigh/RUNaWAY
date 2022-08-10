FROM nginx
COPY . /usr/share/nginx/html
EXPOSE 80

FROM openjdk:11
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY . .
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar runaway.jar
