#!/bin/bash

sed -i "s/port = 3306/port = ${MARIADB_PORT}/g" /etc/my.cnf.d/mariadb-server.cnf

mariadbd &

if ! mysqladmin --wait=30 ping; then
	printf "Runtime config error\n"
	exit 1
fi

mariadb -e "$(eval "echo \"$(cat ../config/runtime_config.sql)\"")"
pkill mariadbd
mariadbd
