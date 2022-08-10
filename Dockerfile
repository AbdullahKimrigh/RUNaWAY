
FROM node:latest
LABEL author: abdullahkimrigh

COPY . /var/www
WORKDIR /var/www

EXPOSE 3000

VOLUME [/var/www]
