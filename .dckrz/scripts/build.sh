#!/bin/bash


curl -sL https://raw.githubusercontent.com/luisgagocasas/heroku-php-nginx-simple/master/nginx_app.conf -o nginx_app.conf && \
curl -sL https://raw.githubusercontent.com/luisgagocasas/heroku-php-nginx-simple/master/composer.json -o composer.json && \
curl -sL https://raw.githubusercontent.com/luisgagocasas/heroku-php-nginx-simple/master/composer.lock -o composer.lock && \
.dckrz/scripts/build-dev.sh
