FROM php:7.1.9-fpm-alpine

COPY ./source.list /etc/apk/repositories

RUN apk upgrade --update && apk add \
        freetype-dev \
        libjpeg-turbo-dev \
        libmcrypt-dev \
        libpng-dev \ 
        autoconf \ 
        build-base \
    && NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
    && docker-php-ext-install -j${NPROC} iconv mcrypt pdo_mysql \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j${NPROC} gd \
    && pecl install redis \
    && docker-php-ext-enable redis
