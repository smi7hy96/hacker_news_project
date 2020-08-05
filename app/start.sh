#!/bin/sh

# gunicorn -b $1:$2 app:app
exec gunicorn --chdir /home/ubuntu/hacker_news_project/app --reload app \
  --bind 127.0.0.1:5000 --daemon
