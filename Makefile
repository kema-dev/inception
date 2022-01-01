# *******************************    POST-IT    ****************************** #
#                                                                              #
#			## $@ 	Le nom de la cible										   #
#			## $< 	Le nom de la première dépendance						   #
#			## $^ 	La liste des dépendances								   #
#			## $? 	La liste des dépendances plus récentes que la cible		   #
#			## $* 	Le nom du fichier sans suffixe							   #
#                                                                              #
# **************************************************************************** #

#!make
include srcs/.env 

NAME		=	inception

COMPOSE		=	cd srcs && docker-compose -p $(NAME)

RM			=	rm -rf

SUDO		=	sudo

MAKE_DIR	=	$(SUDO) mkdir -m 777 -p

CHMOD		=	$(SUDO) chmod -R 777

CHOWN		=	$(SUDO) chown -R jjourdan

all:	fclean .up

.up:
	$(MAKE_DIR) $(WP_HOST_VOLUME_PATH)
	$(MAKE_DIR) $(MARIADB_HOST_VOLUME_PATH)
	$(CHOWN) $(DATA_VOLUME_PATH)
	$(CHMOD) $(DATA_VOLUME_PATH)
	$(SUDO) docker network create inception_network
	$(COMPOSE) up -d --build

clean:
	if docker network rm inception_network; then echo "No network to remove"; fi
	$(COMPOSE) stop

fclean:	clean
	$(COMPOSE) down -v

re:		prune all

prune:	fclean
	docker system prune --volumes --force --all
	if $(SUDO) $(RM) $(DATA_VOLUME_PATH); then echo "No data folder to remove"; fi

.PHONY: all build .up clean fclean re prune