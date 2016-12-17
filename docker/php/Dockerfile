FROM php:7.0-fpm

MAINTAINER shigiang LIU <liushigiang@gmail.com>

RUN apt-get update && apt-get install -y \
    git \
    unzip vim nano

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version


#RUN rm /etc/localtime
#RUN ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime
ENV TZ="Europe/Paris"
RUN echo $TZ | tee /etc/timezone

RUN "date"

#ADD symfony.ini /etc/php5/cli/conf.d/


RUN docker-php-ext-install pdo pdo_mysql

RUN echo 'alias console="php bin/console"' >> ~/.bashrc

WORKDIR /var/www/symfony