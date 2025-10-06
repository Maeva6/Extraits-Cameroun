# Étape 1 : Build frontend avec Node (Alias: frontend_builder)
FROM node:20 AS frontend_builder
WORKDIR /app
# Installer uniquement les dépendances de production
COPY package*.json ./
# Utiliser 'npm ci' pour les builds automatisés et 'npm install' pour les dépendances
RUN npm ci --no-audit --no-fund
COPY . .
# Exécuter le build de production (qui génère public/build)
RUN npm run build 

# ---

# Étape 2 : Construction de l'image PHP-FPM (Alias: base_php)
FROM php:8.2-fpm AS base_php

# Installer les outils système et les extensions PHP
RUN apt-get update && apt-get install -y \
    unzip git curl libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip

# Installer composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Copier le code source
COPY . .

# Copier les assets compilés (public/build) de l'étape 1
# Le chemin correct est /app/public/build
COPY --from=frontend_builder /app/public/build /var/www/html/public/build

# Exécuter composer (sans les dépendances de développement)
RUN composer install --no-dev --optimize-autoloader

# Configuration de l'environnement (Mise en place des fichiers de configuration)
RUN cp .env.example .env

# Exécuter les commandes de préparation
# ATTENTION: key:generate et migrate doivent être faits par des commandes séparées si vous utilisez un système CI/CD
# Pour un build simple:
RUN php artisan key:generate
# RUN php artisan migrate --force # La migration est souvent lancée après le déploiement
RUN chmod -R 775 storage bootstrap/cache
RUN chown -R www-data:www-data storage bootstrap/cache

# Le conteneur PHP-FPM expose le port 9000
EXPOSE 9000

# Commande de démarrage pour PHP-FPM
# Le conteneur va simplement maintenir le processus php-fpm en vie
CMD ["php-fpm"]