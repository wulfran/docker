#!/bin/bash
cd /var/www/html
echo '----------------============== Install composer ==============----------------'
composer install

echo '----------------============== Clear config cache ==============----------------'
php artisan config:clear
echo '----------------============== Generate APP_KEY ==============----------------'
php artisan key:generate
echo '----------------============== Reset config files ==============----------------'
php artisan config:cache
php artisan cache:clear

echo '----------------============== Database Migration ==============----------------'

counter=0
sleep 10
php artisan migrate

echo ' ----------------============== Set web server access rights ==============----------------'
setfacl -dR -m u:www-data:rwX /var/www/html
setfacl -R -m u:www-data:rwX tmp

# set default rights or all 'other' users to rwx
# R-recursive, d-default, m-modify
# to check existing file-access-control-list for the directory
# type: getfacl /var/www/html (in bash console in the docker container)
setfacl -Rdm o::rwx /var/www/html
