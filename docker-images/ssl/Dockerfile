FROM fedora:41

RUN \
  yum -y install \
    httpd \
    php \
    mod_ssl \
    openssl

COPY html-ssl /var/www/html
RUN echo "<?php phpinfo(); ?>" >/var/www/html/test.php

COPY docker.crt /docker.crt

COPY docker.key /docker.key

### Fedora requirement:

COPY docker.crt /etc/pki/tls/certs/localhost.crt
COPY docker.key /etc/pki/tls/private/localhost.key

COPY ssl.conf /etc/httpd/conf.d/default.conf

CMD mkdir /run/php-fpm && php-fpm && httpd -D FOREGROUND
