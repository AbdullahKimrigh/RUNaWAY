FROM nginx

COPY . /usr/share/nginx/html
COPY . var/www

EXPOSE 3000