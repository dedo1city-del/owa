# Use an official PHP runtime as a parent image
FROM php:8.1-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Define the command to run the app
CMD ["apache2-foreground"]
