# 02 — Permisos y Usuarios en Linux

## ¿Qué aprendí?

| Comando    | ¿Qué hace?                                          |
|------------|-----------------------------------------------------|
| ls -la     | Muestra archivos y carpetas con permisos, dueño,    |
|            | grupo, tamaño y fecha de modificación               |
| chmod 000  | Elimina todos los permisos. Nadie puede leer,       |
|            | escribir ni ejecutar. Solo root tiene acceso        |
| chmod 644  | Dueño lee y escribe. Grupo y otros solo leen        |
| chmod 755  | Dueño tiene todo. Grupo y otros leen y ejecutan     |
| chmod 640  | Dueño lee y escribe. Grupo solo lee. Otros nada     |
| whoami     | Muestra el usuario activo en la sesión actual       |
| id         | Muestra uid, gid y todos los grupos del usuario     |
| sudo       | Ejecuta comandos como administrador (root)          |

## ¿Cómo leer los permisos?
drwxrwxr-x → carpeta, dueño rwx, grupo rwx, otros r-x (chmod 775)

## ¿Qué es el shebang?
#!/bin/bash → primera línea de un script. Le dice al sistema
que use bash ubicado en /bin/ para ejecutarlo.

## ¿Qué es un intérprete?
Intermediario entre el kernel y el script. Traduce comandos
humanos a lenguaje máquina (binarios) que el kernel entiende.

## Lecciones aprendidas
- Aprendí a otorgar y quitar permisos a usuarios y grupos
- Entendí cómo funciona chmod y qué significa cada número
- Aprendí a validar permisos con ls -la para saber si es
  archivo o carpeta y qué acceso tiene cada usuario
- Aprendí a crear y ejecutar scripts usando el shebang
  y el intérprete bash
