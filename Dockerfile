<?php phpinfo();
FROM php:5.6-apache
COPY index.php /var/www/html/
docker build -t php-hello-world .
docker run -ti -p 10080:80 php-hello-world
