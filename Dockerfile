# Use the official MySQL image from Docker Hub
FROM mysql:8.0

# Set the root password
ENV MYSQL_ROOT_PASSWORD=wordpass

# Set the database
ENV MYSQL_DATABASE=coffeeshop

# Add a database seed file
ADD setup.sql /docker-entrypoint-initdb.d/
ADD coffeeshop_example.sql /docker-entrypoint-initdb.d/