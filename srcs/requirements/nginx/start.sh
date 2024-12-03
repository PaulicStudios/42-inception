#!/bin/bash

openssl req -x509 \
            -sha256 -days 356 \
            -nodes \
            -newkey rsa:2048 \
            -subj "/C=EN/L=Heilbronn" \
            -keyout /etc/ssl/private/private.key -out /etc/ssl/certs/cert.crt

nginx -g "daemon off;"