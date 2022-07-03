#!/bin/bash

sudo docker compose build \
    && sudo docker compose up -d \
    && sudo docker compose exec exment bash -c 'cd /var/www/html/exment && php artisan vendor:publish --provider="Exceedone\Exment\ExmentServiceProvider" && php artisan passport:keys && php artisan exment:install && php artisan exment:setup-dir --easy_clear=1'