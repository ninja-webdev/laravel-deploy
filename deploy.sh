#!/usr/bin/env bash
# file: deploy.sh
# description: runs the following things in order

git pull origin master

# install composer FIRST then:

php composer install

#quickly 
php composer dumpautoload -o

# clear cache up
php artisan config:clear 

# cache routes
php artisan route:cache
