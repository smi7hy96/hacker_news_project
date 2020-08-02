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

sudo apt install libpython2.7-stdlib -y

sudo install python3-venv -y

sudo cp /vagrant/app.py /home/ubuntu
sudo cp /vagrant/setup.py /home/ubuntu
sudo cp /vagrant/start.sh /home/ubuntu
sudo cp /vagrant/requirements.txt /home/ubuntu

pip3 install -r requirements.txt -y

sudo apt-get install gunicorn -y

sudo systemctl restart nginx
#
# gunicorn -w 3 /home/ubuntu:app
#
# cd /home/ubuntu
#
# sudo python3 -m venv venv
#
# source venv/bin/activate
#
# sudo su
#
# apt install python-pip -y
#
# pip install Flask -y
#
#  sudo apt-get install python3-bs4 -y
