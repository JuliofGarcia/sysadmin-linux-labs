#!/bin/bash

mkdir -p ~/Documentos/sysadmin-linux-labs/mi_carpeta

cd ~/Documentos/sysadmin-linux-labs/mi_carpeta

touch archivo.txt
touch archivo2.txt

echo "Hola soy el archivo 1" > archivo.txt
echo "Hola soy el archivo 2" > archivo2.txt
echo "Hola estoy en el archivo numero 2" >> archivo2.txt
echo "Archivos creados"

echo "====================="

ls -la

cat archivo.txt
cat archivo2.txt
