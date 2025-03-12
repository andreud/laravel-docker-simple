# Run containers

	$ docker compose up

# Install with new Laravel instance: 

In php-fpm controller 
	cd application

	laravel new laravel

	(if "laravel" command not in path)
	/root/.composer/vendor/laravel/installer/bin/laravel new laravel

	cd laravel
	nvm i 22
	npm install && npm run build
	composer run dev

	chown 1000:1000 * -R
	chmod 777 storage -R
	chmod 777 database/database.sqlite 

	In nginx container 
	nginx -t
	nginx -s reaload