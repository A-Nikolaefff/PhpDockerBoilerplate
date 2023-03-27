FROM php:8.2-fpm

# Get an UID and a GUI from the docker-compose.yml file
ARG UID
ARG GID

# Set the UID and the GUI as environment variables
ENV UID=${UID}
ENV GID=${GID}

# Remove an unnecessary dialout group
RUN delgroup dialout

# Create a new group and a new user
RUN addgroup --gid ${GID} --system admin
RUN adduser --ingroup admin --disabled-password --shell /bin/sh --uid ${UID} --system admin

# Replace default user with admin user in configuration files
RUN sed -i "s/user = www-data/user = admin/g" /usr/local/etc/php-fpm.d/www.conf
RUN sed -i "s/group = www-data/group = admin/g" /usr/local/etc/php-fpm.d/www.conf

# Add saving php errors to log file
RUN echo "php_admin_flag[log_errors] = on" >> /usr/local/etc/php-fpm.d/www.conf

# Install the necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    git \
    zip \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Xdebug
RUN pecl install xdebug \ && docker-php-ext-enable xdebug

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
        --filename=composer \
        --install-dir=/usr/local/bin && \
        echo "alias composer='composer'" >> /root/.bashrc

# Install PostgreSQL
RUN docker-php-ext-install pgsql
RUN docker-php-ext-install pdo_pgsql

# Set the working directory to run the following commands
WORKDIR /var/www

# Install composer and run php-fpm
CMD bash -c "composer install && php-fpm -F"

# Listen port 9000
EXPOSE 9000

