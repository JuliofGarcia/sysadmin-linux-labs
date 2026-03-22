# 01 — Navegación y Archivos en Linux

## ¿Qué aprendí?

| Comando  | ¿Qué hace?                                              |
|----------|---------------------------------------------------------|
| pwd      | Muestra la ruta completa donde estás ubicado            |
| ls       | Lista archivos y carpetas del directorio actual         |
| ls -la   | Lista todo incluyendo ocultos, permisos, dueño,         |
|          | grupo, tamaño y fecha de modificación                   |
| cd       | Permite moverse entre carpetas                          |
| mkdir    | Crea una carpeta nueva                                  |
| touch    | Crea un archivo vacío                                   |
| echo     | Imprime texto en pantalla o lo redirige a un archivo    |
| cat      | Muestra el contenido de un archivo                      |
| cp       | Copia un archivo o carpeta (el original queda intacto)  |
| mv       | Mueve o renombra un archivo o carpeta                   |
| rm       | Elimina un archivo (sin papelera, es permanente)        |
| rm -r    | Elimina una carpeta y todo su contenido                 |

## Diferencia entre > y >>

| Operador | Comportamiento                        |
|----------|---------------------------------------|
| >        | Sobreescribe el contenido del archivo |
| >>       | Agrega al final sin borrar nada       |

Ambos crean el archivo si no existe.

## Lab resuelto
```bash
# Crear estructura de carpetas
mkdir -p empresa/ventas empresa/rrhh empresa/ti/servidores

# Crear archivos con contenido
echo "Reporte de ventas Q1" > empresa/ventas/reporte.txt
echo "Lista de empleados"   > empresa/rrhh/empleados.txt
echo "Carpeta de TI"        > empresa/ti/README.txt

# Copiar y renombrar
cp empresa/ventas/reporte.txt empresa/ti/servidores/reporte_backup.txt

# Crear log con dos líneas
echo "Servidor activo" >  empresa/ti/servidores/log.txt
echo "Sin errores"     >> empresa/ti/servidores/log.txt

# Verificar
ls -la empresa/ti/servidores/
cat empresa/ti/servidores/log.txt
cat empresa/ti/servidores/reporte_backup.txt
```

## Lecciones aprendidas
- rm no tiene papelera — lo que se borra no se recupera
- rm solo borra archivos, para carpetas se necesita rm -r
- Usar Tab para autocompletar nombres evita errores de typo
- touch sobre algo que ya existe solo actualiza la fecha
- mkdir acepta múltiples carpetas en un solo comando
