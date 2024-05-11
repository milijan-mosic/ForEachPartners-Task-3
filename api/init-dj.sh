#/bin/bash

set -e




sudo docker-compose -f docker-compose.local.yaml exec api python manage.py makemigrations
sudo docker-compose -f docker-compose.local.yaml exec api python manage.py migrate
sudo docker-compose -f docker-compose.local.yaml exec api python manage.py createsuperuser
