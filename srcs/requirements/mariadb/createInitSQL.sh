#!/bin/bash

# Create or overwrite the init.sql file
cat <<EOL > init.sql
CREATE DATABASE ${WP_DB_NAME};
CREATE USER '${WP_DB_USER}'@'%' IDENTIFIED BY '${WP_DB_USER_PASS}';
GRANT ALL PRIVILEGES ON *.* TO '${WP_DB_USER}'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOL
