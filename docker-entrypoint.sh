#!/bin/bash
#

# to spacify the running env for the app
# 
# ak_DJANGO_ENV='dev'
TS_DJANGO_ENV='pro'
# TS_DJANGO_ENV='staging'
export TS_DJANGO_ENV

# setup django-json rpc
RUN cd /app/django-json-rpc
RUN python setup.py install
RUN cd /app


# cd AKService/
python AKService/manage.py migrate                  # Apply database migrations
python AKService/manage.py collectstatic --noinput  # Collect static files

# Prepare log files and start outputting logs to stdout
mkdir -p /ak/logs/gunicorn
touch /ak/logs/gunicorn/gunicorn.log
touch /ak/logs/gunicorn/access.log
tail -n 0 -f /ak/logs/gunicorn/*.log &

# Start Gunicorn processes
echo Starting Gunicorn.
cd /app/AKService    #  or exec gunicorn AKService.wsgi 

exec gunicorn AKService.wsgi:application \
    --name AKService \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --log-level=info \
    --log-file=/ak/logs/gunicorn/gunicorn.log \
    --access-logfile=/ak/logs/gunicorn/access.log \
    "$@"