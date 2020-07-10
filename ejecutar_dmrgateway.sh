#!/bin/bash

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
cd /home/pi/Desktop
sudo cp Abrir_dmrgateway.desktop /home/pi/
#sleep 1
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_dmrgateway.sh'" /home/pi/Abrir_dmrgateway.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMRGATEWAY_ON.png" /home/pi/Abrir_dmrgateway.desktop
sed -i "10c Name[es_ES]=Cerrar DMRGateway" /home/pi/Abrir_dmrgateway.desktop
sed -i "19c DMRGateway=ON" /home/pi/status.ini
#sleep 1
cd /home/pi/
sudo cp Abrir_dmrgateway.desktop /home/pi/Desktop
#sleep 1
sudo rm /home/pi/Abrir_dmrgateway.desktop

#zenity --info --ok-label=ESTA_VENTANA_SE_CERRARÁ_EN_10_SEGUNDOS --title=DMRGateway --window-icon=/home/pi/V105/ICONO_DMRGATEWAY_ON.png --width=400 --timeout=10 --text "\nTG 8 Para hablar por DMR+\nTG 6 Para hablar por XLX\nTG 11 Para hablar por HBLINK\nTG Cualquiera menos (8, 6 y 11) Para hablar por BM"

zenity --info --ok-label=ESTA VENTANA SE CERRARÁ EN 10 SEGUNDOS --title=DMRGateway --window-icon=/home/pi/V105/ICONO_DMRGATEWAY_ON.png --width=400 --timeout=10 --text "\nTG 8 Para hablar por DMR+\nTG 6 Para hablar por XLX\nTG 11 Para hablar por HBLINK\nTG Cualquiera menos (8, 6 y 11) Para hablar por BM"

echo "${VERDE}"
echo "************************************************************************"
echo "*                       Abriendo DMRGateway                            *"
echo "************************************************************************"

sleep 2

echo "${GRIS}"

cd /home/pi/DMRGateway
sudo ./DMRGateway DMRGateway.ini &

sleep 2

cd /home/pi/MMDVMHost
sudo ./MMDVMDMRGATEWAY MMDVMDMRGateway.ini 

# Cierra el icono ejecutar_dmrgateway si no hay conexión
cd /home/pi/Desktop
sudo cp Abrir_dmrgateway.desktop /home/pi/
sleep 1
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=80x12 -e sudo sh ejecutar_dmrgateway.sh'" /home/pi/Abrir_dmrgateway.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMRGATEWAY_OFF.png" /home/pi/Abrir_dmrgateway.desktop
sed -i "10c Name[es_ES]=Abrir DMRGateway" /home/pi/Abrir_dmrgateway.desktop
sed -i "19c DMRGateway=OFF" /home/pi/status.ini
sleep 1
cd /home/pi/
sudo cp Abrir_dmrgateway.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_dmrgateway.desktop




