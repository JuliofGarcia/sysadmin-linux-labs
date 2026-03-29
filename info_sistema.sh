#!/bin/bash
 
echo "====================="
echo "INFORMACION DEL SISTEMA"
echo "======================="


echo "FECHA Y HORA"
date

echo "================"

echo "USUARIO ACTUAL"
whoami

echo "================"

echo "ESPACIO EN DISCO"
df -h

echo "INFORMACION DEL SISTEMA"
uname -a


echo "================"

echo "MEMORIA RAM"
free -h

echo "================"

echo "TIEMPO ENCENDIDO"
uptime


echo ""
echo "================================"
echo "   FIN DEL REPORTE"
echo "================================"


