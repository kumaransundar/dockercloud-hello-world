#!/bin/sh

sed -i "s/#LISTEN_PORT#/${LISTEN_PORT}/" 

php-fpm -d variables_order="EGPCS" && exec nginx -g "daemon off;"