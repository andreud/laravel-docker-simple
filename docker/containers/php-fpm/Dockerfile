FROM php:8.4-fpm-bullseye
# FROM php:8.4-fpm

# Install system dependencies (unzip)
RUN apt-get update && apt-get install -y unzip nano git
# Install/enable PHP extensions
RUN docker-php-ext-configure pcntl --enable-pcntl && docker-php-ext-install pcntl
# pcntl extension required to run Pail.
RUN docker-php-ext-install mysqli pdo pdo_mysql
#RUN docker-php-ext-install zip

# Install Node/NVM
# Option 1: Install Node.js (replace 22.x with the version you want)
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs
# Option 2: Install NVM (Node Version Manager)
#RUN curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o /usr/local/bin/n && \
#    chmod +x /usr/local/bin/n && \
#    n 22s

# Copy Composer binary
COPY --from=composer/composer:latest-bin /composer /usr/bin/composer

# Install the Laravel installer
RUN composer global require laravel/installer