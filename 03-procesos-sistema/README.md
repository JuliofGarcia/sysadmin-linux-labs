# 03 — Procesos y Sistema en Linux

## ¿Qué aprendí?

| Comando | ¿Qué hace? |
|---------|------------|
| ps aux | Muestra todos los procesos de la máquina independiente si se están ejecutando |
| ps aux grep X | Busca un proceso en específico |
| top | Muestra los procesos activos, cada 3 segundos se actualiza |
| htop | Muestra los procesos activos en una consola más amigable y fácil de comprender |
| kill PID | Termina un proceso amablemente — el proceso puede ignorarlo |
| kill -9 PID | Fuerza la terminación del proceso sin que pueda resistirse |
| df -h | Muestra el espacio disponible en el disco |
| free -h | Muestra la memoria RAM disponible |
| uname -a | Muestra información del sistema operativo |
| uptime | Muestra el tiempo de encendido del sistema |
| du -sh | Muestra el tamaño de una carpeta |
| sleep 300 & | Crea un proceso en segundo plano que dura 300 segundos sin bloquear la terminal |

## ¿Qué es un proceso?
Un proceso es un programa que se está ejecutando en el sistema
para cumplir una función o una acción.

## ¿Qué es un PID?
El PID es el identificador único de cada proceso en el sistema.
Ningún proceso puede tener el mismo PID al mismo tiempo.

## ¿Qué significa el & al final de un comando?
Significa que ejecuta el proceso en segundo plano (background)
sin bloquear la terminal — puedes seguir escribiendo comandos
mientras el proceso corre.

## ¿Cuál es la diferencia entre ps aux y top?
ps aux es como una fotografía que captura el instante exacto
de los procesos. top es como un video que se actualiza cada
3 segundos y permite ver cómo se desarrollan los procesos
en tiempo real.

## ¿Qué es la memoria VIRT vs RES?
La memoria VIRT es una "memoria promesa" — es el límite teórico
que el sistema operativo le asigna al proceso pero que no
necesariamente usa. La memoria RES es la memoria real que
el proceso está utilizando en ese momento.
Para saber cuánta RAM usa un proceso siempre mira RES.

## ¿Qué son PR y NI?
PR (Priority) es la prioridad del proceso — menor número
significa más prioridad. NI (Nice) es un ajuste manual
de prioridad con rango de -20 (máxima) a +19 (mínima).

## Lecciones aprendidas
- Nunca matar procesos del sistema con kill — los que tienen
  prioridad rt o muy alta son del kernel y matarlos puede
  causar daños graves al sistema
- Para saber cuánta RAM usa un proceso mirar RES no VIRT
- ps aux es fotografía, top es video en tiempo real
- htop es más visual y amigable que top para el día a día
- El & ejecuta procesos en background sin bloquear la terminal
