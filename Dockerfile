FROM nginx
VOLUME [ "tmp" ]
COPY . /usr/share/nginx/html
COPY . /var/www
EXPOSE 3000