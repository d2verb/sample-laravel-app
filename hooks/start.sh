#!/bin/bash

ROOT=/var/www/app

cd $ROOT
composer install

if [ ! -e "$ROOT/.env" ]; then
  cp $ROOT/.env.example $ROOT/.env
  php artisan key:generate
fi

chown -R nginx:nginx /var/www/app
