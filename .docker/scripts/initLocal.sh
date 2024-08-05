#!/bin/sh

echo "Executing composer install"
composer install

if test -f "./.env"; then
    echo "Check if an .env file exists: YES"
else
    echo "Check if an .env file exists: NO"
    cp .env.example .env
    php artisan key:generate
    echo ".env file created"
fi

echo "Executing migrate"
php artisan migrate

echo "Executing seed"
php artisan db:seed

echo "Executing serve"
php artisan serve
