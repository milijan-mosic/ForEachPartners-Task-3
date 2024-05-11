#/bin/bash

set -e




sudo docker-compose exec api python manage.py makemigrations
sudo docker-compose exec api python manage.py migrate
sudo docker-compose exec api python manage.py collectstatic
