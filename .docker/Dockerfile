FROM php:8.1.19-alpine3.18

ENV APP_DIR="/var/www/html"
ENV APP_PORT="80"

# BASICS
######################################################################################################################################
RUN apk update && apk upgrade
RUN apk add --no-cache \
        bash \
        curl \
        imagemagick \
        libpng-dev \
        libtool \
        nano \
        wget

## PHP EXTENSIONS
RUN apk add --no-cache \
    php-bcmath \
    php-bz2 \
    php-ctype \
    php-curl \
    php-dom \
    php-fileinfo \
    php-gd \
    php-gettext \
    php-iconv \
    php-imap \
    php-intl \
    php-json \
    php-mbstring \
    php-mysqli \
    php-opcache \
    php-openssl \
    php-pdo \
    php-pdo_dblib \
    php-pdo_mysql \
    php-pdo_sqlite \
    php-phar \
    php-session \
    php-simplexml \
    php-soap \
    php-sqlite3 \
    php-tokenizer \
    php-xml \
    php-xmlreader \
    php-xmlwriter \
    php-zip \
    php-zlib

RUN docker-php-ext-install pdo pdo_mysql

# CLEAR CACHE
######################################################################################################################################
RUN rm -rf /var/cache/apk/*

## COMPOSER METHOD
######################################################################################################################################
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv -v composer.phar /usr/sbin/composer

## CONTAINER CONFIG
######################################################################################################################################
WORKDIR $APP_DIR
EXPOSE $APP_PORT
