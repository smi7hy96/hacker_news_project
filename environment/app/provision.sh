#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install git
sudo apt-get install git -y

sudo apt install nginx -y

# REVERSE PROXY NGINX
sudo unlink /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/environment/conf/reverse_proxy.conf /etc/nginx/sites-available

sudo ln -s /etc/nginx/sites-available/reverse_proxy.conf /etc/nginx/sites-enabled/reverse_proxy.conf

sudo systemctl restart nginx

#INSTALL PYTHON

sudo apt install python3 -y

sudo apt-get install python3-pip -y

#INSTALL REQUIREMENTS
pip3 install -r /home/ubuntu/app/requirements.txt

#INSTALL GUNICORN
sudo apt-get install gunicorn -y


#LAUNCH APP
# gunicorn --bind 127.0.0.1:5000 --chdir /home/ubuntu/app app --daemon
exec gunicorn --chdir /home/ubuntu/app --reload app \
  --bind 127.0.0.1:5000 --daemon

# gunicorn -b 192.168.10.100:5000 app
# #REMOVE SYMLINK FOR NGINX
# sudo unlink /etc/nginx/sites-enabled/default
#
# sudo nginx -s reload
#
# sudo systemctl restart nginx
#
#GUNICORN RUN COMMAND
# gunicorn -w 3 /home/ubuntu:app
# gunicorn -w 2 -b 127.0.0.1:5000 /home/ubuntu:app
