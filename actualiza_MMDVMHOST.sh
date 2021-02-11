#!/bin/bash
/home/pi/V105/./qt_mmdvmhost_off
exit;
clear
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

                    echo "${ROJO}"
                    echo " *********************************************************************"
                    echo " * Si actualizas MMDVMhost desde esta opción, perderás todas las     *"
                    echo " * configuraciones y tendrás que volver a configurar los .ini        *"
                    echo " *********************************************************************"
                    
                    echo "${BLANCO}"
                    echo " *********************************************************************"
                    echo " * Haz antes una copia de seguridad desde el icono COPIAR RESTAURAR   *"
                    echo " * O desde un navegador poniendo la ip de la raspberry pi y luego     *"
                    echo " * utiLiza el icono HACER COPIA SEGURIDAD el cual te creará           *"
                    echo " * el archivo [copia.tar.gz] en la carpeta Downloads de tu ordenador  *"
                    echo " *********************************************************************"                    

                    echo "${VERDE}"
                    read -p '  Quieres hacer la actualización? S/N: ' ejecutar1
                    case $ejecutar1 in
                    [sS]* ) echo ""
                    echo "ok >>>>>"

                    cd /home/pi
                    sudo apt-get install build-essential git-core libi2c-dev i2c-tools lm-sensors
                    git clone https://github.com/ea3eiz/MMDVMHost-EA7EE
                    cd MMDVMHost-EA7EE
                               
                    sudo make clean
                    sudo make
                                        
                    cd /home/pi/MMDVMHost-EA7EE

                    make clean all                
                    
                    # Crea los ejecutables para estas aplicaciones 

                    cp MMDVMHost MMDVMFUSION
                    cp MMDVMFUSION /home/pi/MMDVMHost
                    
                    sudo chmod 777 /home/pi/MMDVMHost/MMDVMFUSION
                    
                    echo""
                    clear
                    exit;
                    echo ""
                    echo "Ok, se ha ejecutado correctamente"
                    echo ""
                    ;;
                    [nN]* ) echo ""
                    ;;
                    esac
                    sleep 1
                    clear
                    exit;
