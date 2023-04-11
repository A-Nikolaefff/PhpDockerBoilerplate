# PHP Project Boilerplate

## Language
- [English](./README.md)
- [Русский](./README-ru.md)

## Description
A build for quickly deploying a local environment for PHP development.
The build  is designed for the WSL (Windows Subsystem for Linux) environment, and
was tested on Ubuntu 22.04.2 LTS built into Windows 10.
Separate build for Laravel in [this repository](https://github.com/A-Nikolaefff/laravel-project-boilerplate).

## Composition
* PHP 8.2
* Xdebug
* Composer
* PostgreSQL 15.1
* pgAdmin
* MySQL 5.7

## Command list

* ```make build``` - build containers
* ```make up``` - start containers
* ```make down``` - stop containers
* ```make list``` - list of running containers
* ```make enter name=SERVICE``` - go to a running container (open command line terminal),
replace ```SERVICE``` with the service name according to **docker-compose.yml**,
for example ```php`` `, ```pgsql``` or ```nginx``` and so on
* ```make php``` - go to php container

## Setting up Xdebug in PHPStorm
* Default server name: **docker**
* Host: **localhost**
* Port: **8080**
* Use path mapping for **public** and **src** directories

## Possible problems

In order for PostgreSQL docker container volumes to work correctly, the UID/GID 
of the user inside the container must match the value of the local Linux user.  
By default, this container starts with UID/GID 1000/1000. If the UID/GID of the 
local user is different you must run the ```export LOCAL_UID=$(id -u)``` 
and ```export LOCAL_GID=$(id -g)``` commands before starting the PostgreSQL 
container for the first time.