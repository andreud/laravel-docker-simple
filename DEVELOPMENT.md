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
