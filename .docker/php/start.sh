#!/bin/bash

sudo service cron start
sudo /usr/bin/supervisord
php-fpm
