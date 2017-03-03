# docker-symfony-nginx

This symfony docker makes it possible to have an environment everything you needed to work

# Installation

Command

```bash
symfony $ cd docker
symfony $ docker-compose build
symfony $ docker-compose up -d
symfony $ docker exec -it docker_php_1 bash
symfony $ composer install
```
OR
```bash
symfony $ . docker/ops-setup.sh
symfony $ up
symfony $ php_exec
symfony $ composer install
symfony $ down
```
