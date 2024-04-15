# PHP Project Boilerplate

## Обзор
Сборка для быстрого развертывания локального окружения для разработки на PHP.
Отдельная сборка для Laravel в [этом репозитории](https://github.com/A-Nikolaefff/laravel-project-boilerplate).

## Системные требования
Шаблон предназначен для использования на системах Linux или WSL (Windows Subsystem for Linux).
Для работы необходим установленный пакет make. Команда для установки на Ubuntu:
```
sudo apt install make
```

## Состав шаблона
- PHP: версия 8.3
- Laravel: версия 11
- MySQL: версия 8.3
- PostgreSQL: версия 16.2

## Инициализация нового проекта
* Клонируйте репозиторий в новую директорию с помощью команды:
```
git clone https://github.com/A-Nikolaefff/php-nginx-boilerplate.git YOUR_PROJECT_NAME
```
* В директории проекта выполните команду для инициализации автолоадера Composer
```
make init
```

## Make команды
Полный список команд доступен с помощью команды ```make help``` или в самом Makefile в корне проекта. Примеры команд:

* ```make init``` - инициализация нового проекта Laravel
* ```make up``` - запуск контейнеров
* ```make php``` - зайти в контейнер php (запустить терминал)
* ```make debug``` - отладка консольной команды

## Настройка Xdebug в PHPStorm

* **Имя сервера:** localhost
* **Хост**: localhost
* **Порт**: 80
* **Path Mapping:** настроить сопоставление корневой директории проекта с путем /var/www/.