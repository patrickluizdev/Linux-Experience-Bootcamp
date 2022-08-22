#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://codeload.github.com/patrickluizdev/Flex-Turismo/zip/refs/heads/main
unzip main
cd Flex-Turismo-main
cp -R * /var/www/html/
