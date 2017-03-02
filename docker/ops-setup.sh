#!/bin/bash

# Variables

PROJECT_NAME="docker-symfony-nginx"

SOURCE_PATH=`pwd`/${BASH_SOURCE[0]}
PROJECT_PATH=`dirname ${SOURCE_PATH}`/..


GREEN='\033[0;32m'
NC='\033[0m' # Reset color

WEB_CONTAINER=${PROJECT_NAME}"_nginx_1"
PHP_CONTAINER=${PROJECT_NAME}"_php_1"
DB_CONTAINER=${PROJECT_NAME}"_db_1"

alias chroot_project="cd $PROJECT_PATH"


printf "Configuring ${GREEN}dev${NC} environment ...\n"
    OVERRIDE_DOCKER_YML=" -f docker/docker-dev.yml"


alias compose="chroot_project;docker-compose -p $PROJECT_NAME"
alias up="compose up -d"

