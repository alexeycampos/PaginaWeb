# Usar una imagen de PHP con Apache preinstalado
FROM php:8.1-apache

# Copiar los archivos al directorio donde Apache los servirá
COPY . /var/www/html/

# Habilitar mod_rewrite (si es necesario)
RUN a2enmod rewrite

# Cambiar los permisos de los archivos para que Apache pueda acceder a ellos
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto 80 de Apache
EXPOSE 80

# Iniciar Apache
CMD ["apache2-foreground"]
