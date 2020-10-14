#!/bin/bash
clear
while true
do
clear
# path usuario
usuario=$(awk "NR==1" /home/pi/.config/autostart/usuario)

# Versión
SCRIPTS_version=$(awk "NR==1" $usuario/.config/autostart/version)

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
echo "                       Script para actualizar BlueDV                       "
echo "${ROJO}                                   By EA3EIZ ${VERDE}                 "
echo "   **************************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar a BlueDV Versión 9593"
echo "\33[1;36m   2)\33[1;37m Volver a BlueDV Versión 9582"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
echo ""
case $escoger_menu in
1bloqueado) echo ""
while true
do
			clear
			echo "\33[1;33m"
	        read -p ' Quieres actualizar BlueDV Versión 9593 Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
			if [ -d /home/pi/bluedv_anterior/ ];
			then
			clear
			echo "\v\v\v"
			echo "${VERDE}"
			echo "   **************************************************************************"
			echo "                    YA TIENES ACTUALIZADA LA VERSIÓN 9593             "
			echo "   **************************************************************************"
			sleep 1
			clear
			echo "${BLANCO}"
			echo "\v\v\v"
			echo "   **************************************************************************"
			echo "                    YA TIENES ACTUALIZADA LA VERSIÓN 9593             "
			echo "   **************************************************************************"
			sleep 1
			clear
			echo "${AMARILLO}"
			echo "\v\v\v"
			echo "   **************************************************************************"
			echo "                    YA TIENES ACTUALIZADA LA VERSIÓN 9593            "
			echo "   **************************************************************************"
			sleep 1
			clear
			echo "${ROJO}"
			echo "\v\v\v"
			echo "   **************************************************************************"
			echo "                    YA TIENES ACTUALIZADA LA VERSIÓN 9593             "
			echo "   **************************************************************************"
			sleep 1
			clear
			echo "${VERDE}"
			echo "\v\v\v"
			echo "   **************************************************************************"
			echo "                    YA TIENES ACTUALIZADA LA VERSIÓN 9593             "
			echo "   **************************************************************************"
			sleep 3
 			else
			cd /home/pi/
			mkdir bluedv_anterior
			cp bluedv/*.* bluedv_anterior/
			rm -r /home/pi/bluedv
			git clone https://github.com/ea3eiz/bluedv9593			
			mv /home/pi/bluedv9593 /home/pi/bluedv
			sudo chmod 777 DExtra_Hosts.txt		
			fi	
			 echo "\33[1;32m******************************************************"
			 echo "\33[1;32m*      SE HA ACTUALIZADO A LA VERSIÓN 9593           *"
			 echo "\33[1;32m******************************************************"
			 sleep 3
			exit;
		    echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			exit;
			break;;
esac
done;;
2bloqueado) echo ""
while true
do
			clear
			echo "\33[1;33m"
	        read -p ' Quieres volver a BlueDV Versión 9582 Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
			if [ -d /home/pi/bluedv_anterior/ ];
			then
			clear
			echo "\33[1;32mVOLVIENDO A LA VERSIÓN 9582"
			sleep 1
			clear
			echo "\33[1;31mVOLVIENDO A LA VERSIÓN 9582"
			sleep 1
			clear
			echo "\33[1;32mVOLVIENDO A LA VERSIÓN 9582"
			sleep 1
			clear
			echo "\33[1;31mVOLVIENDO A LA VERSIÓN 9582"
			sleep 1
			clear
			echo "\33[1;32m***********************************"
			echo "\33[1;32m* VOLVIENDO A LA VERSIÓN 9582     *"
			echo "\33[1;32m***********************************"
			sleep 5
			cd /home/pi/
            sudo cp /home/pi/bluedv_anterior/*.* /home/pi/bluedv/
            sudo rm -R bluedv_anterior			
			else
			clear
			echo "\33[1;32mYA ESTÁS EN LA VERSIÓN 9582"
			sleep 1
			clear
			echo "\33[1;31mYA ESTÁS EN LA VERSIÓN 9582"
			sleep 1
			clear
			echo "\33[1;32mYA ESTÁS EN LA VERSIÓN 9582"
			sleep 1
			clear
			echo "\33[1;31mYA ESTÁS EN LA VERSIÓN 9582"
			sleep 1
			clear
			echo "\33[1;32m*************************************************************"
			echo "\33[1;32m*            YA ESTÁS EN LA VERSIÓN 9582                    *"
			echo "\33[1;32m*************************************************************"
			sleep 5	
			fi	
			exit;
		    echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
30000bloqueado) echo ""
while true
do
			clear
			echo "\33[1;33m"
	        read -p ' Quieres actualizar el BlueDV Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"

if [ -d /home/pi/bluedv_anterior/ ];
then
echo "Sí, sí existe."
else
echo "No, no existe"
fi
	read a
		    echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
31bloqueado) echo ""
while true
do
clear
	        ejecutar1=S
		    case $ejecutar1 in
		    [sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_1
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_1
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_1
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
32bloqueado) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_2
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_2
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_2
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
33bloqueado) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_3
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_3
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_3
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
34bloqueado) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_4
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_4
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_4
  		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
41bloqueado) echo ""
while true
do
clear
	        ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
			cd /home/pi/MMDVMHost
			sudo cp MMDVMHost MMDVMSOLODSTAR
			sudo cp MMDVMBM.ini MMDVMSOLODSTAR.ini
                                    sed -i "4c Exec=sh -c 'cd /home/pi/V30/;sudo sh ejecutar_solodstar_04.sh'" /home/pi/Desktop/Boton_1
                                    sed -i "5c Icon=/home/pi/V30/SOLO_DSTAR.png" /home/pi/Desktop/Boton_1
                                    sed -i "10c Name[es_ES]=Abrir solo D_STAR" /home/pi/Desktop/Boton_1
                                    sed -i "9c Terminal=true" /home/pi/Desktop/Boton_1
		    echo ""
		    echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
42bloqueado) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c 'cd /home/pi/V30/;lxterminal --geometry=80x47 -e sudo sh actualizar_IDS_MMDVMHost.sh'" /home/pi/Desktop/Boton_2
                                    sed -i "5c Icon=/home/pi/V30/EDITAR.png" /home/pi/Desktop/Boton_2
                                    sed -i "10c Name[es_ES]=Actualizar IDS MMDVMHost" /home/pi/Desktop/Boton_2
		            echo ""0
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
43bloqueado) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_3
                                    sed -i "5c Icon=/home/pi/V30/AUTOARRANQUE.png" /home/pi/Desktop/Boton_3
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_3
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
44bloqueado) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c 'cd /home/pi/V30;sudo sh actualizar_YSF_30.sh'" /home/pi/Desktop/Boton_4
                                    sed -i "5c Icon=/home/pi/V30/ACTUALIZAR_BD.png" /home/pi/Desktop/Boton_4
                                    sed -i "10c Name[es_ES]=Actualizar YSF" /home/pi/Desktop/Boton_4
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
1abloqueado) echo ""
while true
do
clear
echo "\33[1;33m"
	        read -p ' Quieres actualizar el BlueDV Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"

			cd /home/pi/
  			#mkdir bluedv_anterior
            #sudo cp bluedv/*.* bluedv_anterior/
            sudo rm -r /home/pi/bluedv
			git clone https://github.com/ea3eiz/bluedv09488
			
			cd /home/pi/bluedv
			sudo chmod 777 DExtra_Hosts.txt			
			echo "\33[1;32m******************************************************"
			echo "\33[1;32m*  SE HA ACTUALIZADO A LA ÚLTIMA VERSIÓN DISPONIBLE  *"
			echo "\33[1;32m******************************************************"
			sleep 3
exit;
		    echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
0) echo ""
clear
exit;;	
esac
done


