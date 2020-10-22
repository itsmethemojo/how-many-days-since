#!/bin/bash

# no code is best code. steal php-nginx config from https://github.com/luisgagocasas/heroku-php-nginx-simple

curl -sL https://raw.githubusercontent.com/luisgagocasas/heroku-php-nginx-simple/master/nginx_app.conf -o nginx_app.conf && \
curl -sL https://raw.githubusercontent.com/luisgagocasas/heroku-php-nginx-simple/master/composer.json -o composer.json && \
curl -sL https://raw.githubusercontent.com/luisgagocasas/heroku-php-nginx-simple/master/composer.lock -o composer.lock && \
.dckrz/scripts/build-dev.sh
