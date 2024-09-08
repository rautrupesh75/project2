# Use the base image for your application
FROM devopsedu/webapp:latest

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy PHP application files from the host to the container
COPY . /usr/src/app

# Install Apache and PHP
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php php-mysql

# Copy Apache configuration (if you have custom configurations)
# COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Expose the application port (e.g., 80 for HTTP)
EXPOSE 80

# Start Apache
CMD ["apachectl", "-D", "FOREGROUND"]

