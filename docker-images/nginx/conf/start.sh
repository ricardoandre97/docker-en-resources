#!/bin/bash

# Starting php
echo "*** Starting php"
mkdir -p /run/php-fpm && /usr/sbin/php-fpm -c /etc/php/fpm


# Start nginx
echo "*** Starting nginx"
nginx -g 'daemon off;'
