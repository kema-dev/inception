FROM		alpine:3.12

LABEL		maintainer="jjourdan@student.42lyon.fr"

RUN			apk update && apk upgrade && apk add --no-cache	\
											openssl			\
											nginx			\
											curl			\
											vim				\
											sudo

RUN			rm -f /etc/nginx/nginx.conf
COPY		./config/nginx.default.conf /etc/nginx/nginx.conf

RUN			mkdir /run/nginx &&	\
			chown nginx:nginx /run/nginx

ENV			CERTS_DIR=/etc/openssl					\
			DOMAIN_NAME=jjourdan.42.fr					\
			CERT_PATH=/etc/ssl/jjourdan.42.fr.cert	\
			KEY_PATH=/etc/ssl/jjourdan.42.fr.key	\
			PHP_FPM_HOST=php-fpm					\
			PHP_FPM_PORT=9000						\
			TLS_VERSION=1.3

COPY		scripts/setup_nginx.sh /setup_nginx.sh
RUN			chmod -R +x /setup_nginx.sh

EXPOSE		443

ENTRYPOINT	["sh", "setup_nginx.sh"]