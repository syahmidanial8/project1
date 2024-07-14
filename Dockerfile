# Use the official PHP image with Apache as the base image
FROM php:7.4-apache

# Copy the local PHP application files to the container's working directory
COPY . /var/www/html/

# Set ownership and permissions
RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/

# Expose port 80 to allow web traffic
EXPOSE 80


