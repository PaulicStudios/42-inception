FROM debian:bullseye

RUN apt update && apt install -y lsb-release apt-transport-https ca-certificates wget
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list

RUN apt update && apt install -y php7.4-fpm php7.4-mysqli curl

RUN mkdir -p /run/php && chown -R www-data:www-data /run/php

COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY start.sh ./start.sh
RUN chmod +x start.sh

CMD ["./start.sh"]
