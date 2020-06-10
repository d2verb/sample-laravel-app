#!/bin/bash

cd /var/www/app
composer install
chown -R nginx:nginx /var/www/app
