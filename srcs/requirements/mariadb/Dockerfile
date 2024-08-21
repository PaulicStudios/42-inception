FROM debian:bookworm

RUN apt update && apt install -y mariadb-server

RUN mkdir /run/mysqld && chown mysql:mysql /run/mysqld


ARG WP_DB_NAME
ARG WP_DB_USER
ARG WP_DB_USER_PASS

COPY ./createInitSQL.sh .
RUN sh createInitSQL.sh
RUN cp init.sql /etc/mysql


USER mysql

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["mysqld"]
