FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl gettext-base

COPY default /etc/nginx/sites-available/default

COPY start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]
