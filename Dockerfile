FROM php:alpine
WORKDIR /var/www/html
ADD https://raw.githubusercontent.com/prasathmani/tinyfilemanager/master/tinyfilemanager.php ./index.php
RUN echo '<?php $use_auth=$_ENV["USE_AUTH"]?:false; $exclude_items=array("*.php"); ?>' > config.php
EXPOSE 80
ENTRYPOINT php -S $HOSTNAME:80

