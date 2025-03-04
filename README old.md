# Run containers

	$ docker compose up

# Install with new Laravel instance: 

In container php-fpm (/application dir):
	$ composer create-project laravel/laravel .	

In host (sirve hacerlo desde el container?)
	$ sudo chown andy application -R

Back in container
	$ chmod 763 storage/logs -R
	$ chmod 763 storage/framework -R

Duda/Mejora:
	Se puede setear este comando (almenos el primero) en la definicion del Dockerfile o Dockercompose?
	Idealmente que sea opcional para el caso en que queiran usarlo para instancias existentes



Cosas que estoy seteando a mano trans instalar:

 - cambiar config de la DB de mysqllite a mysql e ingresar 

En el container:

	$ php artisan migrate



## Install Breeze

	$ composer require laravel/breeze --dev
	$ php artisan breeze:install
	(aca ahce un wizard preguntando el stack)
	│ › ● Blade with Alpine                                        
	│   ○ Livewire (Volt Class API) with Alpine                    
	│   ○ Livewire (Volt Functional API) with Alpine               
	│   ○ React with Inertia                                       
	│   ○ Vue with Inertia                                         
	│   ○ API only        

	Please execute the "npm install" && "npm run dev" commands to build your assets.

Run in host if container donesnt have node/npm

    $ npm i
    $ npm run dev

TO-DO:	- add node/npm install in container php-fpm,
		- dejar de usar FROM phpdockerio/php:7.4-fpm

$ php artisan migrate

-------------

No funcionan los assets js/css ya que la instalacion de laravel està seteada apra usar MIX,
y las paginas de BREEZE usan VITE.

PACKAGE.JSON original con MIX

	"scripts": {
        "dev": "npm run development",
        "development": "mix",
        "watch": "mix watch",
        "watch-poll": "mix watch -- --watch-options-poll=1000",
        "hot": "mix watch --hot",
        "prod": "npm run production",
        "production": "mix --production"
    },
	"devDependencies": {
		...
        "laravel-mix": "^6.0.6",
		...
     }

PACKAGE.JSON modificado para usar VITE

	npm install --save-dev vite laravel-vite-plugin


https://vitejs.dev/guide/troubleshooting.html#this-package-is-esm-only

------------


TO-DO: Renames: 

/impribox-back-dock-2
	/impribox-back
	/lara-doc-min
		/docker
		- docker-compose.yml

To:
/impribox-back
	/application
	/docker
		/containers
		- docker-compose.yml

# Install on existing project