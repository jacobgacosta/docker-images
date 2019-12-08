# Redis

docker run -d --name redis --network=sd-net redis:alpine

# MySQL

docker run -d --name mysql \
--network=sd-net \
-v mysqldata:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=root \
-e MYSQL_DATABASE=my-app \
-e MYSQL_USER=app-user \
-e MYSQL_PASSWORD=app-pass \
mysql:5.7

# PHP

docker run -d --name php \
--network=sd-net \
-v $(pwd)/application:/usr/share/nginx/html \
igly/php7.3:1.0.0

# Nginx

docker run -d --name nginx \
--network=sd-net \
-p 80:80 \
-v $(pwd)/application:/usr/share/nginx/html \
igly/nginx1.17.5:1.0.0
