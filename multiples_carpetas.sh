#!/bin/bash

proyecto=$1

mkdir -p ~/Documentos/proyectos/$proyecto/src
mkdir -p ~/Documentos/proyectos/$proyecto/logs
mkdir -p ~/Documentos/proyectos/$proyecto/backup
touch ~/Documentos/proyectos/$proyecto/README.md

echo "Proyecto $proyecto creado "
