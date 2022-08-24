#!/bin/bash

echo "Aguarde servidor sendo atualizado"...

apt-get update 
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Aplicação sendo baixada para o site local"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html
