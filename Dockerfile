
FROM node:latest
LABEL author: abdullahkimrigh

COPY . /var/www
WORKDIR /var/www

EXPOSE 3000

VOLUME [/var/www]

ENTRYPOINT exec java $JAVA_OPTS -jar runaway.jar
