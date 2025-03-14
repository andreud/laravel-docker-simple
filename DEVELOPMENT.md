# To-Do

- Fix "nvm i" not found on php-fpm Dockerfile
- Addd .env for docker
- Fix file permissions for laravel dir editing on host
    - original ownership after installing using laravel isntaller:
        root:root, -rw-r--r--
- Fix initial file permissions: 
    - file_put_contents(/var/www/html/laravel/storage/framework/...): 
        Failed to open stream: Permission denied


## Troubleshooting

List php.ini files:
    $ php --ini

Show where composer installs global packages
    $ composer global config --list | grep home

## Artisan clear commands

    php artisan cache:clear
    php artisan config:clear
    php artisan config:cache
    php artisan route:clear
    php artisan view:clear

This command clears multiple caches in one go:

    php artisan optimize:clear

It runs: cache:clear, config:clear, route:clear, view:clear

If you also want to recompile and cache configurations and routes after clearing, you can run:

    php artisan optimize

This will: Cache routes (route:cache), Cache config (config:cache), Cache views (view:cache)
