#!/bin/bash

# Este es un script/bot para automatizar prueba de ejecuciópn de programas y borrado de archivos.
# la tarea semanal de mantener un laboratorio de computadores implica ver si softwares determinados funcionan.
# Script funciona con modulos nativos de Bash. No es necesario instalar nada extra.
# hay que darle full acceso al disco al terminal para borrar archivos
# 22/Enero/2023 agregué el borrado de archivos de algunas carpetas que ralentizan sistemas.
# por lo que se convierte en bot de mantención de sistema completo.


echo "Borramos archivos de papelera"
rm -rf ~/.Trash/*
#rm -rf ~/.Downloads/*
#rm -rf ~/.Library/Caches/*
#rm -rf ~/.Documents/*

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
