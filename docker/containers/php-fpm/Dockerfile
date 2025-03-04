FROM php:8.4-fpm

# Install system dependencies (unzip)
RUN apt-get update && apt-get install -y unzip nano 

# Install PHP zip extensions, parece que no es necesario, pero deberia habilitar la extension zip
#RUN docker-php-ext-install zip

# Install Node/NVM
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
RUN \. "$HOME/.nvm/nvm.sh"
#RUN nvm install 22 # falla con "nvm not found"

# Copy Composer binary
COPY --from=composer/composer:latest-bin /composer /usr/bin/composer

# Install Laravel installer
RUN composer global require laravel/installer

# WORKDIR "/application"

