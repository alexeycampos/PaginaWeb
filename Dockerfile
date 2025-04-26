# Usa una imagen oficial de PHP con Apache
FROM php:8.1-apache

# Copia los archivos de tu proyecto al contenedor
COPY . /var/www/html/

# Habilita el módulo de reescritura de Apache
RUN a2enmod rewrite

# Expón el puerto 80, que es el predeterminado para Apache
EXPOSE 80

# Comando para iniciar Apache en primer plano
CMD ["apache2-foreground"]
