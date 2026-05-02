#!/bin/bash

echo "=========INTERFACES=========="
ip a

echo "=========RUTAS=========="
ip r

echo "===========CONECTIVIDAD======"
ping -c 5 8.8.8.8

echo "===== PUERTOS ====="
ss -tuln