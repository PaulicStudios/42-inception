#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=${WP_DB_NAME} --dbuser=${WP_DB_USER} --dbpass=${WP_DB_USER_PASS} --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=${WP_URL} --title=inception --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_MAIL} --allow-root

# Add another user
./wp-cli.phar user create ${WP_NEW_USER} ${WP_NEW_USER_MAIL} --role=editor --user_pass=${WP_NEW_USER_PASS} --allow-root

php-fpm7.4 -F
