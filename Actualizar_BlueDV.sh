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

echo "${VERDE}"
echo "   ********************************************************************"
echo "   *               Script para actualizar BlueDV                      *"
echo -n "${ROJO}"
echo "   *                      $SCRIPTS_version by EA3EIZ                               *"
echo -n "${VERDE}"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar BlueDV Version 1.0.0.9560"
echo "\33[1;36m   2)\33[1;37m Volver a la versión BlueDV Version 1.0.0.9441"
#echo "\33[1;36m   2)\33[1;37m Actualizar DV4mini Control Panel (Stick ID:8D-6E-8C V1,77)"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: " 
read escoger_menu
echo ""
case $escoger_menu in
1) echo ""
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
			clear
			echo "\33[1;32mYA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE"
			sleep 1
			clear
			echo "\33[1;31mYA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE"
			sleep 1
			clear
			echo "\33[1;32mYA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE"
			sleep 1
			clear
			echo "\33[1;31mYA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE"
			sleep 1
			clear
			echo "\33[1;32m******************************************************"
			echo "\33[1;32m* YA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE *"
			echo "\33[1;32m******************************************************"
			sleep 5
else
			cd /home/pi/
  			mkdir bluedv_anterior
            sudo cp bluedv/*.* bluedv_anterior/
            sudo rm -r /home/pi/bluedv
			git clone https://github.com/ea3eiz/bluedv
			
			cd /home/pi/bluedv
			sudo chmod 777 DExtra_Hosts.txt
		
fi	
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
2) echo ""
while true
do
clear
echo "\33[1;33m"
	        read -p ' Quieres volver a la versión anterior Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
if [ -d /home/pi/bluedv_anterior/ ];
then
			clear
			echo "\33[1;32mVOLVIENDO A LA VERSIÓN ANTERIOR"
			sleep 1
			clear
			echo "\33[1;31mVOLVIENDO A LA VERSIÓN ANTERIOR"
			sleep 1
			clear
			echo "\33[1;32mVOLVIENDO A LA VERSIÓN ANTERIOR"
			sleep 1
			clear
			echo "\33[1;31mVOLVIENDO A LA VERSIÓN ANTERIOR"
			sleep 1
			clear
			echo "\33[1;32m***********************************"
			echo "\33[1;32m* VOLVIENDO A LA VERSIÓN ANTERIOR *"
			echo "\33[1;32m***********************************"
			sleep 5
						cd /home/pi/
            sudo cp bluedv_anterior/*.* bluedv/
            sudo rm -R bluedv_anterior
			
else
			


clear
			echo "\33[1;32mYA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA"
			sleep 1
			clear
			echo "\33[1;31mYA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA"
			sleep 1
			clear
			echo "\33[1;32mYA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA"
			sleep 1
			clear
			echo "\33[1;31mYA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA"
			sleep 1
			clear
			echo "\33[1;32m*************************************************************"
			echo "\33[1;32m* YA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA *"
			echo "\33[1;32m*************************************************************"
			sleep 5


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
0) echo ""
clear
echo "\33[1;33m   ******************************"
echo "   *                            *"
echo "   *     CERRANDO SCRIPT        *"
echo "   *                            *"
echo "   ******************************"
sleep 1
clear
exit;;	
esac
done

