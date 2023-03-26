build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

ps:
	docker ps

exec:
	docker exec -it $(c) /bin/bash

