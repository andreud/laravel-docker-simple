# Usage

Edit docker/docker-compose.yml:
	
	name: 'myapp'
	services ports,
	mysql service settings

Run/create containers

	$ docker compose up

# Run containers

	$ docker compose up

## Install with new Laravel instance: 

	# In php-fpm controller 
	cd application
	laravel new laravel
	# (if "laravel" command not in path)
	/root/.composer/vendor/laravel/installer/bin/laravel new laravel
	cd laravel
	nvm i 22
	npm install && npm run build
	composer run dev

if you change the new 'laravel' by another name, you should also change it in: 
	- /docker/containers/nginx/nginx.conf
	- /.gitignore

## File permissions

	chown 1000:1000 * -R # Parece no ser necesario
	chmod 777 storage -R
	chmod 777 database/database.sqlite 


# Envs

SESSION_DRIVER=file

config/session.php

	'same_site' => env('SESSION_SAME_SITE', null)
	'http_only' => env('SESSION_HTTP_ONLY', false)
	'secure' => env('SESSION_SECURE_COOKIE', false)

## Refresh

	php artisan optimize:clear
	php artisan optimize
	npm run build

## Reload nginx container config


proxy_set_header X-CSRF-TOKEN $http_x_csrf_token; ??

	nginx -t
	nginx -s reload