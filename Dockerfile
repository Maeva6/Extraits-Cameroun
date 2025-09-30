# Étape 1 : Build frontend avec Node
FROM node:20 AS frontend
WORKDIR /app
COPY package*.json ./
# RUN npm ci --no-audit --no-fund --omit=dev
RUN npm ci --no-audit --no-fund

COPY . .
RUN npm run build

# Étape 2 : Laravel avec PHP
FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    unzip git curl libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip
FROM composer:2 AS composer

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
COPY . .

# Copie les assets compilés par Vite
# COPY --from=frontend /app/public/build public/build
COPY --from=frontend /app/public/build ./public/build


RUN composer install --no-dev --optimize-autoloader
RUN cp .env.example .env
RUN php artisan key:generate
RUN php artisan migrate --force
RUN chmod -R 775 storage bootstrap/cache
RUN chown -R www-data:www-data storage bootstrap/cache

EXPOSE 8000
CMD php artisan serve --host=0.0.0.0 --port=8000
