#!/bin/bash

Proyectos_varios=$1

mkdir -p ~/Documentos/sysadmin-linux-labs/"$Proyectos_varios"/src
mkdir -p ~/Documentos/sysadmin-linux-labs/"$Proyectos_varios"/logs
mkdir -p ~/Documentos/sysadmin-linux-labs/"$Proyectos_varios"/backup
touch ~/Documentos/sysadmin-linux-labs/"$Proyectos_varios"/README.md

echo " Proyecto $Proyectos_varios creado.... "
