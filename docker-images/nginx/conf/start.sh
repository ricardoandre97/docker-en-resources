#!/bin/bash

# Starting php
echo "*** Starting php"
/usr/sbin/php-fpm


# Start nginx
echo "*** Starting nginx"
nginx -g 'daemon off;'
