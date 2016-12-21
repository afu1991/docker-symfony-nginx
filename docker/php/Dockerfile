FROM php:7.0-fpm

MAINTAINER shigiang LIU <liushigiang@gmail.com>

RUN apt-get update && apt-get install -y \
    git \
    unzip vim nano

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version



ENV TZ="Europe/Paris"
RUN echo $TZ | tee /etc/timezone

RUN "date"

RUN usermod -u 1000 www-data

RUN docker-php-ext-install pdo pdo_mysql

RUN echo 'alias console="php bin/console"' >> ~/.bashrc

WORKDIR /var/www/symfony