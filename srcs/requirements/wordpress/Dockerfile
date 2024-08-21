FROM debian:bookworm

RUN apt update && apt install -y lsb-release apt-transport-https ca-certificates wget
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list

RUN apt update && apt install -y php7.4-fpm php7.4-mysqli curl


COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf

# WORKDIR /var/www/html
# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN ./wp-cli.phar core download --allow-root
# RUN ./wp-cli.phar config create --dbname=${WP_DB_NAME} --dbuser=${WP_DB_USER} --dbpass=${WP_DB_USER} --dbhost=mariadb --allow-root
# RUN ./wp-cli.phar core install --url=localhost --title=inception --admin_user= --admin_password=admin --admin_email=admin@admin.com --allow-root


CMD ["php-fpm7.4", "-F"]
