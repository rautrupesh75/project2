# Base image
FROM devopsedu/webapp:latest

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy application files from the host to the container
COPY projCert-master /usr/src/app

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y <dependencies>

# Expose the application port
EXPOSE 8090

# Start the application (replace with your app's start command)
CMD ["bash", "start.sh"]
