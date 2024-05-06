FROM php:7.2-apache

# Instala as dependências adicionais do PHP
# RUN apt-get update \
#     && apt-get install -y \
#         libpng-dev \
#         libjpeg-dev \
#         libfreetype6-dev \
#         libzip-dev \
#         zip \
#         unzip \
#         curl \
#         git \
#     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
#     && docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql zip

COPY ./demo/ /var/www/html/

EXPOSE 80