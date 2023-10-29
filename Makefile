build:
	docker-compose build

up:
	docker-compose up

upd:
	docker-compose up -d

down:
	docker-compose down

list:
	docker-compose ps

enter:
	docker exec -it $(name) /bin/bash

nginx:
	docker-compose exec nginx /bin/bash

mysql:
	docker-compose exec mysql /bin/bash

pgsql:
	docker-compose exec pgsql /bin/bash
