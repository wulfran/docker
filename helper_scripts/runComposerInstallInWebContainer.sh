#!/bin/bash
cd ..
sudo docker-compose exec web sh -c 'composer install && composer dump-autoload && php artisan cache:clear'