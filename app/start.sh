#!/bin/sh

# gunicorn -b $1:$2 app:app
exec gunicorn --chdir /home/ubuntu/app --reload app \
  --bind 127.0.0.1:5000 --daemon
