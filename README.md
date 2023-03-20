# PHP Project Boilerplate

### Состав:
* PHP 8.2
* PostgreSQL 15.2
* MySQL 5.7
* Xdebug
* Composer

### Настройка Xdebug в PHPStorm:
* IDE key: docker
* Использовать path mapping для папок *public* и *src*

### Команды (Windows):

Запуск контейнеров c пересборкой образов при необходимости (алиас для "docker-compose up -d --build")
* bin/up

Остановка контейнеров (алиас форма для "docker-compose down")
* bin/down

Зайти в контейнер (алиас для "docker exec -it *имя контейнера* /bin/bash")
* bin/exec *имя контейнера*

Список запущенных контейнеров (алиас для docker ps)
* bin/list