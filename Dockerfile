FROM php:8.1-apache

# Instalar dependências necessárias para os módulos PHP
RUN apt-get update && apt-get install -y \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libonig-dev \
    libzip-dev \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli pdo pdo_mysql

# Copiar o php.ini personalizado (se necessário)
COPY php.ini /usr/local/etc/php/php.ini
