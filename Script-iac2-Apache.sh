#!/bin/bash

echo "Atualizando o nosso servidor..."
apt-get install update -y
apt-get install upgrade -y
apt-get  install apache-2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da nossa aplicacao web..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/


