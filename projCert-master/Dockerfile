# Use the base image for your application
FROM devopsedu/webapp:latest

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy the PHP application files from the host to the container
COPY . /usr/src/app

# Install PHP and necessary extensions if not already present
# (Adjust based on what the base image includes)
RUN apt-get update && \
    apt-get install -y php php-mysql

# Expose the application port (adjust if necessary)
EXPOSE 80

# Start the web server (adjust if necessary based on base image)
# Assuming the base image already handles web server startup
CMD ["apachectl", "-D", "FOREGROUND"]