.PHONY: help

CONTAINER_PHP=php

help: ## Print help
	@awk 'BEGIN {FS = ":.*##"; printf "\nCommands:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

#--------------------------------------------- New project init command -----------------------------------------------#

init: ## Init new laravel project with name "laravel/laravel". You will be able to change this in composer.json later.
	@docker compose run --rm php sh -c "composer install"

#------------------------------------------------- Docker commands ----------------------------------------------------#

build: ## Build all containers
	docker compose build

up: ## Start all containers
	docker compose up

down: ## Stop all containers
	docker compose down

php: ## Enter PHP container
	docker compose exec ${CONTAINER_PHP} /bin/bash

#---------------------------------------------------- NPM commands ----------------------------------------------------#

watch: ## Watch assets
	npm run dev

prod: ## Build assets
	npm run build

#--------------------------------------------------- Common commands --------------------------------------------------#

debug: ## Debug artisan command, for example: make debug app:test-command
	docker compose exec ${CONTAINER_PHP} php -dxdebug.mode=debug -dxdebug.start_with_request=yes -dxdebug.client_port=9000 -dxdebug.client_host=host.docker.internal $(RUN_ARGS)
