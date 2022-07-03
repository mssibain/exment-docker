FROM php:8.0.20-fpm-buster
ARG wwwpassword
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y \
    git vim wget libzip-dev zlib1g-dev unzip libxml2-dev libpng-dev default-mysql-client libonig-dev \
    && docker-php-ext-install mysqli dom gd zip pdo_mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# RUN useradd -ms /bin/bash www-data \
#     && echo "www-data:$wwwpassword" | chpasswd
RUN chown -R www-data /var/www/html
USER www-data

WORKDIR /var/www/html
RUN wget https://exment.net/downloads/ja/exment.zip \
    && unzip exment \
    && rm exment.zip