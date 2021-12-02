FROM php:7.0-apache

COPY . /var/www/html/
COPY start-apache /usr/local/bin
RUN a2enmod rewrite

# Copy application source
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]