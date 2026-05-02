# 05 — Redes en Linux

## ¿Qué aprendí?

| Comando | ¿Qué hace? |
|---------|------------|
| ip a | Muestra información completa de interfaces de red — IPs, MACs, estado |
| hostname | Muestra el nombre del host |
| hostname -I | Muestra solo las direcciones IP del host |
| ping -c 4 host | Envía 4 paquetes al host para verificar conectividad |
| traceroute host | Muestra todos los saltos hasta el destino — útil para diagnosticar dónde se pierde la comunicación |
| nslookup host | Resuelve DNS — traduce nombre a IP |
| dig host | Resuelve DNS con información detallada — TTL, flags, tiempos |
| ss -tulnp | Muestra puertos abiertos y procesos que los usan (-t TCP -u UDP -l listening -n números -p proceso) |
| curl https://url | Obtiene y muestra contenido web — útil para consultar APIs |
| wget https://url | Descarga contenido web y lo guarda como archivo |

## ¿Qué es una interfaz de red?
Una interfaz de red es el medio lógico por donde la PC puede
recibir y transferir datos. Nos muestra información vital de
la configuración de red y ayuda a validar si hay problemas
lógicos o físicos.

## ¿Qué es el loopback (127.0.0.1)?
Es la dirección IP del localhost — apunta siempre a la misma
máquina. Se usa para comunicación interna entre procesos sin
salir a la red. Nunca sale del equipo.

## ¿Cuál es la diferencia entre IP local e IP pública?
La IP local identifica al host dentro de una red privada
(ejemplo: 192.168.0.12) — solo es válida dentro de esa red.
La IP pública es asignada por el ISP y es con la cual el
equipo se identifica en internet (ejemplo: 186.86.33.238).

## ¿Qué es DNS?
DNS (Domain Name System) es un servicio que traduce nombres
en lenguaje natural (google.com) a direcciones IP
(172.217.162.142) que las máquinas pueden entender.
Es como la agenda de contactos de internet.

## ¿Cuál es la diferencia entre curl y wget?
curl se utiliza para ver e interactuar con contenido web —
ideal para consultar APIs y ver respuestas en pantalla.
wget se utiliza para descargar contenido web y guardarlo
como archivo en el sistema.

## ¿Qué es un puerto?
Un puerto es como el número de apartamento de un edificio.
La IP es la dirección del edificio y el puerto indica
a qué servicio específico conectarse dentro de esa IP.
Ejemplo: IP:22 → SSH, IP:80 → HTTP, IP:443 → HTTPS.
Los puertos van del 0 al 65535 — los menores de 1024
son reservados para servicios del sistema.

## Interfaces de red de mi sistema

| Interfaz | IP | Descripción |
|---|---|---|
| lo | 127.0.0.1 | Loopback — comunicación interna |
| enp34s0 | 192.168.0.12 | Interfaz real — conexión a internet |
| virbr0 | 192.168.122.1 | Interfaz virtual creada por KVM |
| virbr1 | 192.168.100.1 | Interfaz virtual creada por KVM |

## Datos de mi red

| Dato | Valor |
|---|---|
| IP local | 192.168.0.12 |
| IP pública | 186.86.33.238 |
| Gateway | 192.168.0.1 |
| DNS | 127.0.0.53 |
| Latencia a Google | ~11ms |

## Lecciones aprendidas
- curl muestra contenido en pantalla — wget descarga archivos
- La IP pública es diferente a la IP local
- traceroute muestra dónde se pierde la comunicación
- Los * * * en traceroute son normales — router no responde
- ss -tulnp es esencial para ver qué servicios están activos
- dig da más información que nslookup para diagnóstico DNS