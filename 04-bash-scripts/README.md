# 04 — Shell & Scripts Bash

## ¿Qué aprendí?

| Concepto | ¿Qué es? |
|----------|----------|
| Script .sh | Archivo que contiene una serie de instrucciones bash para ejecutar tareas automáticamente |
| #!/bin/bash | Primera línea del script llamada shebang — indica que es un script de bash |
| Variables | Forma de almacenar y asignar datos en el script |
| $variable | Forma de usar una variable ya declarada |
| read | Comando para capturar input interactivo del usuario |
| read -p | Input interactivo donde los datos se ingresan en la misma línea |
| if/elif/else/fi | Condicionales — ejecuta acciones según una condición. Se pueden anidar |
| for i in; do | Ciclo que ejecuta instrucciones hasta que la secuencia finalice |
| done | Indica el final del bloque de código del ciclo |
| $(comando) | Asignar el resultado de un comando como variable |
| mkdir -p | Crea la ruta de carpetas aunque no existan |
| [ -d ] | Valida si una ruta es una carpeta |
| [ -f ] | Valida si una ruta es un archivo |
| [ -z ] | Valida si una variable está vacía |
| seq 1 N | Genera una secuencia de números del 1 al N |

## Operadores de comparación numérica

| Operador | Significado |
|----------|-------------|
| -gt | Mayor que |
| -lt | Menor que |
| -ge | Mayor o igual |
| -le | Menor o igual |
| -eq | Igual a |
| -ne | Diferente de |

## ¿Qué es un script?
Un script es un archivo que podemos ejecutar en nuestro sistema,
en el cual escribimos una serie de instrucciones para un fin
concreto — muchas veces para automatizar tareas o resolver
una necesidad de información.

## ¿Para qué sirve el read?
Sirve para hacer el script más interactivo — el usuario puede
ingresar datos al script para que este ejecute acciones
específicas según esos datos.

## ¿Cuál es la diferencia entre date y $date?
date es un comando del sistema que muestra la fecha actual.
$date es una variable que nosotros creamos y a la que podemos
asignar cualquier dato — incluyendo el resultado de date
usando $(date).

## Scripts que creé

### variables.sh
Declara variables de nombre, edad y sistema operativo
y las imprime en una frase.

### edad.sh
Evalúa si una edad es mayor o menor de 18 usando if/else.

### bucle.sh
Imprime los números del 1 al 10 usando un ciclo for.

### info_sistema.sh
Muestra automáticamente: fecha, usuario, disco, RAM y uptime.
Útil para conocer el estado de un servidor rápidamente.

### admin_proyectos.sh
Script interactivo que crea estructuras de proyectos con
subcarpetas, README.md y log.txt de forma automática.
Usa bucles anidados, read, mkdir -p y verificación de rutas.

## Lecciones aprendidas
- Nunca usar cd dentro de un ciclo — puede actuar de manera
  que NO se espera. Mejor usar rutas absolutas
- Sin espacios en la asignación de variables: edad=27 no edad = 27
- $(comando) captura el resultado de un comando como variable
- read -p hace los scripts más profesionales e interactivos
- mkdir -p es esencial para crear rutas completas de una vez
