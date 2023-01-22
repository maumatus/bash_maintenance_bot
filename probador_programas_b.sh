#!/bin/bash

# Este es un script/bot para automatizar prueba de ejecuciópn de programas.
# la tarea semanal de mantener un laboratorio de computadores implica ver si softwares determinados funcionan.
# Script funciona con modulos nativos de Bash. No es necesario instalar nada extra.



#!/bin/bash

echo "Ejecutamos programa en secuencia PS, AE y PR"
(open -a "Adobe Photoshop CC 2018") &
sleep 5
(open -a "Adobe After Effects CC 2018") &
sleep 5
(open -a "Adobe Premiere Pro CC 2019" || "Adobe Premiere Pro CC 2020" || "Adobe Premiere Pro CC 2021" || "Adobe Premiere Pro CC 2022") &
#echo $!
echo "suspendemos ejecución por 5 minutos"
sleep 60
echo "matamos todos los procesos"
pkill -f "Adobe Photoshop CC 2018"
pkill -f "Adobe After Effects CC 2018"
pkill -f "Adobe Premiere Pro CC 2019" || "Adobe Premiere Pro CC 2020" || "Adobe Premiere Pro CC 2021" || "Adobe Premiere Pro CC 2022"
