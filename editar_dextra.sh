﻿#!/bin/bash
clear
while true
do
clear

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
version=$(awk "NR==20" /home/pi/.local/versiones_YSF2DMR_DMR2YSF_DMR2NXDN.ini)
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

echo "${VERDE}"
echo "   **************************************************************************"
echo -n "${CIAN}"
echo "                              SCRIPT IRCDDBGATEWAY      "
echo -n "${ROJO}"
echo "                                  $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   **************************************************************************"
echo ""
echo  "${CIAN}   1)${AMARILLO} Actualizar salas y reflectores Dstar"
echo ""
echo  "${CIAN}   2)${AMARILLO} Editar fichero DExtra_Host.txt"
echo ""
echo  "${CIAN}   3)${BLANCO} Editar parámetros principales Ircddbgateway"
echo ""
echo  "${CIAN}   4)${MARRON} Recuperar configuración inicial Ircddbgateway"
echo "\v\v"
echo "   ${ROJO}0) Salir"
echo "\v\v"
echo -n "\33[1;36m   Elige una opción: " 

read escoger_menu
case $escoger_menu in
1) echo ""
while true
do

                      
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        
                        clear
                        echo "${VERDE}"
                        echo "            ********************************************************"
                        echo "${BLANCO}"
                        echo "                    ACTUALIZANDO REFELECTORES Y SALAS DSTAR"
                        echo "${VERDE}"
                        echo "            ********************************************************"
                        

                        #Actualiza reflectores 
                        #ircddbgateway -gui 2019
                        cd /home/pi/V105
                        sudo chmod 777 -R /usr/share/opendv
                        cp DExtra_Hosts.txt /usr/share/opendv
                        cp DPlus_Hosts.txt /usr/share/opendv
                        cp DCS_Hosts.txt /usr/share/opendv

                        sudo chmod 777 -R /usr/local/share/opendv
                        cp DExtra_Hosts.txt /usr/local/share/opendv
                        cp DPlus_Hosts.txt /usr/local/share/opendv
                        cp DCS_Hosts.txt /usr/local/share/opendv

                        #cambiado el 1-07-2020
                        cd /usr/share/opendv
                        #sudo curl --fail -o DExtra_Hosts.txt -s http://www.arrg.us/HF/DCS_Hosts.txt 
                        #sudo curl --fail -o DExtra_Hosts.txt -s http://www.pistar.uk/downloads/DExtra_Hosts.txt
                        sudo curl --fail -o DCS_Hosts.txt -s http://www.pistar.uk/downloads/DCS_Hosts.txt
                        #sudo curl --fail -o DPlus_Hosts.txt -s http://www.pistar.uk/downloads/DPlus_Hosts.txt
                        
                        #ircddbgatewayd 2019
                        #cambiado el 1-07-2020                     
                        #sudo curl --fail -o DExtra_Hosts.txt -s http://www.arrg.us/HF/DExtra_Hosts.txt
                        #sudo curl --fail -o DExtra_Hosts.txt -s http://www.pistar.uk/downloads/DExtra_Hosts.txt
                        #sudo curl --fail -o DCS_Hosts.txt -s http://www.pistar.uk/downloads/DCS_Hosts.txt
                        #sudo curl --fail -o DPlus_Hosts.txt -s http://www.pistar.uk/downloads/DPlus_Hosts.txt
                        
                        #Dv4mini
                        cd /usr/local/share/opendv/
                        sudo cp DExtra_Hosts.txt /home/pi/dv4mini/xref.ip

                        sleep 2     
                       
                        clear       
                        echo "${VERDE}"
                        echo "            ********************************************************"
                        echo "${AMARILLO}"
                        echo "             SE HAN ACTUALIZADO TODOS LOS REFLECTORES Y SALAS DSTAR"
                        echo "${VERDE}"
                        echo "            ********************************************************"
                        sleep 4

                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;   
2) echo ""
while true
do

                      
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        sudo geany /usr/share/opendv/DExtra_Hosts.txt
                        #sudo cp /usr/local/share/opendv/DExtra_Hosts.txt /usr/share/opendv/DExtra_Hosts.txt
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
3) echo ""
while true
do

                      
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
                        if [ "$version" = "2019" ]
                        then
                        cd /home/pi/V105
                        sh editar_ircddbgateway.sh 
                        else  
                        clear       
                        echo "${VERDE}"
                        echo "            *******************************************************       "
                        echo "${AMARILLO}"
                        echo "                   NO TIENES LA ÚLTIMA VERSIÓN DE IRCDDBGATEWAY           "
                        echo "                         ${CIAN}ACTUALIZA A LA VERSIÓN:${ROJO} 20190402   "
                        echo ""
                        echo "                                 ${BLANCO}OPCIÓN 3 DEL MENÚ               "
                        echo "${VERDE}"
                        echo "            *******************************************************       "
                        sleep 5
                        fi
                        break;;
			[nN]* ) echo ""
			break;;
esac
done;;
4) echo ""
while true
do

                      
                        echo -n "${AMARILLO}"
                        read -p '   Estás seguro S/N?: ' actualizar
                        case $actualizar in
                        [sS]* ) echo ""
                        cd /home/pi/V105
                        cp ircddbgateway_config_inicial /etc/ircddbgateway
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
0) echo ""
exit;;	
esac
done

