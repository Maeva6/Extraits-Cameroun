# Étape 1 : Build frontend avec Node (Alias: frontend_builder)
FROM node:20 AS frontend_builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --no-audit --no-fund
COPY . .
RUN npm run build

# ---

# Étape 2 : Construction de l'image PHP-FPM (Alias: base_php)
FROM php:8.2-fpm AS base_php

RUN apt-get update && apt-get install -y \
    unzip git curl libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip

# Installer composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
COPY . .

# Copier les ASSETS compilés par Vite (public/build)
COPY --from=frontend_builder /app/public/build /var/www/html/public/build

# 🚨 AJOUT CRITIQUE : Copie de la configuration PHP-FPM
# Assurez-vous que le chemin local est correct (ex: docker/php-fpm.conf)
COPY docker/php-fpm.conf /usr/local/etc/php-fpm.d/www.conf

RUN composer install --no-dev --optimize-autoloader
RUN cp .env.example .env
RUN php artisan key:generate
# Les migrations sont mieux gérées par une commande de démarrage ou un job
# RUN php artisan migrate --force 
RUN chmod -R 775 storage bootstrap/cache
RUN chown -R www-data:www-data storage bootstrap/cache

EXPOSE 9000
# Commande de démarrage pour PHP-FPM
CMD ["php-fpm"]