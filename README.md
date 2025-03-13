# Usage

Edit docker/docker-compose.yml:
	
	name: 'myapp'
	services ports,
	mysql service settings

Run/create containers

	$ docker compose up

## Install with new Laravel instance: 

	# In php-fpm container
	nvm i 22 
	cd /var/www/html
	laravel new laravel
	# If "laravel" command not in path:
	/root/.composer/vendor/laravel/installer/bin/laravel new laravel
	
	# In needed:
	cd laravel
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

This one alone seems to fix 419 on posts 
	SESSION_DRIVER=file
	Other related in 2config/session.php" no needed
		'same_site' => env('SESSION_SAME_SITE', null)
		'http_only' => env('SESSION_HTTP_ONLY', false)
		'secure' => env('SESSION_SECURE_COOKIE', false)


# Database

Use mysql container:
	#DB_CONNECTION=sqlite
	DB_CONNECTION=mysql
	DB_HOST=lar-simp-dok-mysql-1
	DB_PORT=3306
	DB_DATABASE=myapp_db
	DB_USERNAME=root
	DB_PASSWORD=myapp_mysql_root_pass

Migrate:
	php artisan:migrate

## Refresh

	php artisan optimize:clear
	php artisan optimize
	npm run build

## Reload nginx container config


proxy_set_header X-CSRF-TOKEN $http_x_csrf_token; ??

	nginx -t
	nginx -s reload