FROM nginx
VOLUME [ "tmp" ]
RUN apt-get update && apt-get install ssh
COPY . /usr/share/nginx/html
EXPOSE 80
