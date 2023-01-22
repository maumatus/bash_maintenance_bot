#!/bin/bash

# Este es un script/bot para automatizar prueba de ejecuciópn de programas y borrado de archivos de algunos directorios específicos.
# Script funciona con modulos nativos de Bash. No es necesario instalar nada extra.
# hay que darle full acceso al disco al terminal para borrar archivos
# 22/Enero/2023 agregué el borrado de archivos de algunas carpetas que ralentizan sistemas.


echo "Borramos archivos de papelera y descargas (trash and downloads)"
if rm -rf ~/.Trash/*; then
    echo "borrado de papelera ok"
else
    echo "no hay archivos para borrar"
fi

#if rm -rf ~/.Downloads/*; then
    #echo "borrado de descargas ok"
#else
    #echo "no hay archivos en carpeta descargas"
#fi
sleep 2

echo "Ahora ejecutamos programa en secuencia: Photoshop, After Effects y Premiere"
if (open -a "Adobe Photoshop CC 2018"); then
    echo "Photoshop ok"
else
    echo "problemas con photoshop, revisar manualmente"
fi
sleep 2

if (open -a "Adobe After Effects CC 2018"); then
    echo "After Effects ok"
else
    echo "problemas con photoshop, revisar manualmente"
fi
sleep 2

if (open -a "Adobe Premiere Pro CC 2019" || "Adobe Premiere Pro CC 2020" || "Adobe Premiere Pro CC 2021" || "Adobe Premiere Pro CC 2022"); then
    echo "Premiere ok"
else
    echo "problemas con premiere, revisar manualmente"
fi
sleep 2

echo "todos los programas iniciaron correcto, suspendemos ejecución bot por 8 minuto para que terminen de cargar"
sleep 480

echo "reiniciamos bot y este cerrara todos los programas que prendio"
sleep 2

if pkill -f "Adobe Photoshop CC 2018"; then
    echo "Photoshop terminado"
else
    echo "problemas para terminar photoshop, revisar manualmente"
fi

sleep 2

if pkill -f "Adobe After Effects CC 2018"; then
    echo "After Effects terminado"
else
    echo "problemas para terminar After Effects, revisar manualmente"
fi

sleep 2

if pkill -f "Adobe Premiere Pro CC 2019" || "Adobe Premiere Pro CC 2020" || "Adobe Premiere Pro CC 2021" || "Adobe Premiere Pro CC 2022"; then
    echo "Premiere terminado"
else
    echo "problemas para terminar Premiere, revisar manualmente"
fi

sleep 2

echo "bot termino su ejecución sin errores, terminar consola por favor"