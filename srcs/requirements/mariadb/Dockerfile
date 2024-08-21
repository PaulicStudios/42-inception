FROM debian:bookworm

RUN apt update && apt install -y mariadb-server

RUN mkdir /run/mysqld && chown mysql:mysql /run/mysqld

USER mysql

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["mysqld"]
