#!/bin/bash
sudo killall DMR2NXDN
sudo killall NXDNGateway

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

echo "${BLANCO}"
echo "                  ******************************************"
echo "                  *           Al cerrar DMR2NXDN           *"
echo "                  *          ${VERDE}se Activa DVSWITCH ${BLANCO}           *"
echo "                  ******************************************"
sleep 3


# Activa DVSWITCH
cd /home/pi/V105
sh ejecutar_dvswitch.sh

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_DMR2NXDN.desktop /home/pi
sleep 1
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=75x12 -e sudo sh ejecutar_DMR2NXDN.sh'" /home/pi/Abrir_DMR2NXDN.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMR2NXDN_OFF.png" /home/pi/Abrir_DMR2NXDN.desktop
sed -i "10c Name[es_ES]=Abrir DMR2NXDN" /home/pi/Abrir_DMR2NXDN.desktop
sed -i "16c DMR2NXDN=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp Abrir_DMR2NXDN.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_DMR2NXDN.desktop

