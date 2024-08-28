# Use an official PHP runtime as a parent image
FROM php:8.0-fpm

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . .

# Install any required packages
RUN docker-php-ext-install pdo pdo_mysql

# Expose port 9000 to the outside world
EXPOSE 9000

# Define the command to run the application
CMD ["php-fpm"]
