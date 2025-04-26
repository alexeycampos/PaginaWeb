# Usa una imagen oficial de PHP
FROM php:8.1-apache

# Actualiza el sistema e instala dependencias necesarias (como Apache)
RUN apt-get update && apt-get install -y apache2

# Copia los archivos de tu proyecto al contenedor
COPY . /var/www/html/

# Habilita el módulo de reescritura de Apache
RUN a2enmod rewrite

# Exponer el puerto 80 para el servidor Apache
EXPOSE 80

# Comando para ejecutar Apache en primer plano
CMD ["apache2ctl", "-D", "FOREGROUND"]
