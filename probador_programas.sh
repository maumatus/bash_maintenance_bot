#!/bin/bash

# Este es un script/bot para automatizar prueba de ejecución de programas.
# 22/Enero/2023 agregué el borrado de archivos de algunas carpetas que ralentizan sistemas.
# por lo que se convierte en bot de mantención de sistema completo.
# la tarea semanal de mantener un laboratorio de computadores implica ver si softwares determinados funcionan.
# Script funciona con modulos nativos de Bash. No es necesario instalar nada extra.

echo "Borramos archivos de papelera"
rm -rf ~/.Trash/*

echo "Ejecutamos programas de Adobe"

open -a "Adobe Premiere Pro CC 2019" || "Adobe Premiere Pro CC 2020" || "Adobe Premiere Pro CC 2021" || "Adobe Premiere Pro CC 2022"
open -a "Adobe After Effects CC 2018"
open -a "Adobe Photoshop CC 2018"

echo "Suspendemos programa por 1 minutos mientras prenden Softwares"
sleep 60
echo "Reiniciamos proceso y apagamos Photoshop y After"

killall "Adobe After Effects CC 2018.3"
killall "Adobe Photoshop CC"

echo "Suspendemos programa por 1 minutos mientras esperamos a Premiere"
sleep 60
killall "Adobe Premiere Pro CC"
echo "Reiniciamos proceso y apagamos Premiere"
           
echo "proceso de prueba terminado"

