# PHP Project Boilerplate

### Состав:
* PHP 8.2
* PostgreSQL 15.1
* MySQL 5.7
* Xdebug
* Composer

### Настройка Xdebug в PHPStorm:
* IDE key: docker
* Использовать path mapping для папок *public* и *src*

### Команды (Windows):
Все команды выполнять в директории **bin/win**

* **.\up** - запуск контейнеров c пересборкой образов при необходимости (docker-compose up -d --build)
* **.\down** - остановка контейнеров (docker-compose down)
* **.\list** - список запущенных контейнеров (docker ps)
* **.\exec имя_контейнера** - зайти в контейнер (docker exec -it *имя_контейнера* /bin/bash)

### Команды (Linux):
Все команды выполнять в директории **bin/linux**

* **./up** - запуск контейнеров c пересборкой образов при необходимости (docker-compose up -d --build)
* **./down** - остановка контейнеров (docker-compose down)
* **./list** - список запущенных контейнеров (docker ps)
* **./exec имя_контейнера** - зайти в контейнер (docker exec -it *имя_контейнера* /bin/bash)
* **./exec** - при запуске без имени контейнера выводится список запущенных контейнеров с возможностью выбора контейнера по номеру