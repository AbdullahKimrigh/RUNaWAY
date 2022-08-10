
FROM nginx:alpine
COPY . /usr/share/nginx/html
VOLUME [ "tmp" ]
EXPOSE 80