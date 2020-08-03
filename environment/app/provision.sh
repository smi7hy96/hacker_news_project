#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install git
sudo apt-get install git -y

sudo apt install nginx -y

sudo apt install python3 -y

sudo apt-get install python3-pip -y

#INSTALL REQUIREMENTS
pip3 install -r /home/ubuntu/app/requirements.txt

sudo apt-get install gunicorn -y

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
