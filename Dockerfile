FROM php:8.1-apache

COPY . /var/www/html/

EXPOSE 80

# Optional: Enable Apache rewrite module
RUN a2enmod rewrite


