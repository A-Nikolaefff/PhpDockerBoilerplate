# PHP Project Boilerplate
Сборка для быстрого развертывания локального окружения для разработки на PHP.
Отдельная сборка для Laravel в [этом репозитории](https://github.com/A-Nikolaefff/laravel-project-boilerplate).

### Состав:
* PHP 8.2
* PostgreSQL 15.1
* MySQL 5.7
* Xdebug
* Composer

### Команды (Linux):
Для удобства управления все основные команды внесены в Makefile

* ```make build``` - сборка контейнеров
* ```make up``` - запуск контейнеров 
* ```make down``` - остановка контейнеров 
* ```make ps``` - список запущенных контейнеров 
* ```make exec c=CONTAINER``` - зайти в контейнер, вместо CONTAINER подставить id или имя контейнера

### Настройка Xdebug в PHPStorm:
* IDE key по умолчанию: docker
* Использовать path mapping для директорий **public** и **src**