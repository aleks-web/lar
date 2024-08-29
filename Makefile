SHELL = /bin/bash
COMPOSE_TIMEOUT = 3000
export


app-shell: ## Start shell into app container
	UNAME=$(shell whoami) docker-compose run $(DC_RUN_ARGS) app_lar sh

up: ## Start containers
	UNAME=$(shell whoami) docker-compose up --detach --remove-orphans

down: ## Down containers
	UNAME=$(shell whoami) docker-compose down --remove-orphans