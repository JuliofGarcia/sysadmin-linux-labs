#!/bin/bash

echo "============================"
echo "====ADMIN DE PROYECTOS======"
echo "============================"


read -p "¿En qué ruta quieres trabajar? " ruta
read -p "¿Cuántos proyectos quieres crear? " numero_proyectos
fecha=$(date)
if [ -d "$ruta" ]; then
    echo "Ruta encontrada"
else
    echo "La ruta se esta creando"
    mkdir -p "$ruta"
fi

echo ""
echo "✅ Creando estructura..."

for i in $(seq 1 $numero_proyectos); do

    echo ""
    echo "--- Proyecto $i ---"

    read -p "¿Nombre del proyecto? " nombre_proyecto
    read -p "¿Numero de subcarpetas? " numeros_subcarpetas
    read -p "¿Nombre base de las subcarpetas? " nombre_subcarpetas
    
    for j in $(seq 1 $numeros_subcarpetas); do
        mkdir -p "$ruta/$nombre_proyecto/${nombre_subcarpetas}_${j}"
        echo "$nombre_proyecto/${nombre_subcarpetas}_${j} creado"
    done
    echo "Proyecto: $nombre_proyecto" > "$ruta/$nombre_proyecto/README.md"
    echo "$fecha" > "$ruta/$nombre_proyecto/log.txt"
     
done

echo ""
echo "Estructura creada exitosamente"
echo "============================"
ls -la "$ruta"





