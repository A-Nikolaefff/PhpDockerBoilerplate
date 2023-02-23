FROM php:fpm

RUN apt-get update && apt-get install -y \
    curl \
    git \
    zip \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Xdebug
RUN pecl install xdebug \ && docker-php-ext-enable xdebug

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
        --filename=composer \
        --install-dir=/usr/local/bin && \
        echo "alias composer='composer'" >> /root/.bashrc

# PostgreSQL
RUN docker-php-ext-install pgsql
RUN docker-php-ext-install pdo_pgsql

WORKDIR /var/www

CMD bash -c "composer install && php-fpm -F"

EXPOSE 9000

