FROM	 	alpine:3.12

LABEL		maintainer="jjourdan@student.42lyon.fr"

RUN			apk update && apk upgrade && apk add --no-cache	\
											mariadb			\
											mariadb-client	\
											curl			\
											vim				\
											sudo

RUN			mkdir -p /run/mysqld && mkdir -p /var/lib/mysql
RUN			chown -R mysql:mysql /run/mysqld && chown mysql:mysql /var/lib/mysql
RUN			mariadb-install-db --user=mysql --datadir='/var/lib/mysql'

ENV			MARIADB_USER=mariadb_user			\
			MARIADB_PASSWORD=mariadb_password	\
			MARIADB_DATABASE=mariadb_database	\
			MARIADB_PORT=3306

COPY		./config/mariadb-server.cnf  /etc/my.cnf.d/mariadb-server.cnf
RUN			chown -R mysql:mysql /etc/my.cnf.d

COPY		./scripts /tmp/scripts
COPY		./config/runtime_config.sql /tmp/config/runtime_config.sql
RUN			chown -R mysql:mysql /tmp/config &&	\
			chown -R mysql:mysql /tmp/scripts

USER		mysql

WORKDIR		/tmp/scripts

EXPOSE		3306

ENTRYPOINT	["sh", "setup_mariadb.sh"]