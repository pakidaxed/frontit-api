FROM php:7.4-fpm-alpine

RUN apk update \
    && apk add --no-cache composer make autoconf g++ \
    && pecl install xdebug \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable xdebug \
    && apk del --purge autoconf g++ make



