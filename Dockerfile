FROM php:8.1-apache

# Copy your app code to Apache's web root
COPY . /var/www/html/

# Open port 80
EXPOSE 80

# Enable .htaccess support (optional, if needed)
RUN a2enmod rewrite


