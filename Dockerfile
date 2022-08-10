FROM nginx
VOLUME [ "tmp" ]
COPY . /usr/share/nginx/html
EXPOSE 80