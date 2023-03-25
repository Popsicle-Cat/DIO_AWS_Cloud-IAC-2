#!/bin/bash

echo updating the system...

apt-get update
apt-get upgrade -y

echo installing apache2...

apt-get install apache2 -y

echo installing unzip...

apt-get install unzip -y

echo downloading aplication from url...

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo copying files to destination...

cd linux-site-dio-main
cp -R * /var/www/html

echo process finished.
