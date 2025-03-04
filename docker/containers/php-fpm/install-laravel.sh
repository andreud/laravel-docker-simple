#! /usr/bin/bash

echo "current dir "  `pwd` 

cd application

echo 'Installing new Laravel instance...'

/usr/bin/composer create-project laravel/laravel .
chmod 763 storage/logs -R
chmod 763 storage/framework -R
#chown andy application -R #chown: invalid user: 'andy'

echo "Install Laravel Breeze? y/N"
read install_breeze

if ["$install_breeze" == 'y']; then
    echo "Installing breeze..."
    /usr/bin/composer require laravel/breeze --dev
    /usr/bin/php artisan breeze:install
fi
