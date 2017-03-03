#!/bin/bash

# Variables

PROJECT_NAME="docker-symfony-nginx"

SOURCE_PATH=`pwd`/${BASH_SOURCE[0]}
PROJECT_PATH=`dirname ${SOURCE_PATH}`/..
GREEN='\033[0;32m'
NC='\033[0m' # Reset color

alias chroot_project="cd $PROJECT_PATH"

printf "Configuring ${GREEN}dev${NC} environment ...\n"


WEB_CONTAINER=${PROJECT_NAME}"_nginx_1"
PHP_CONTAINER=${PROJECT_NAME}"_php_1"
DB_CONTAINER=${PROJECT_NAME}"_db_1"

alias compose="chroot_project;docker-compose -f docker/docker-compose.yml"
alias up="chroot_project;compose up -d"
alias down="compose stop;compose down"
alias php_exec="compose exec php bash"
