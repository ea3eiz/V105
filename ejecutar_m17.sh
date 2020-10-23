#!/bin/bash

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp top.desktop /home/pi
#sed -i "4c DV4mini=ON" /home/pi/status.ini
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_m17.sh'" /home/pi/top.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_M17_ON.png" /home/pi/top.desktop
sed -i "11c Name[es_ES]=Cerrar M17" /home/pi/top.desktop
#sed -i "4c DV4mini=ON" /home/pi/status.ini
cd /home/pi
sudo cp top.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/top.desktop
zenity --info --ok-label= --title=Abriendo_BlueDB --window-icon=/home/pi/V105/ICONO_BLUEDV_ON.png --width=400 --timeout=15 --text 
"Próximamente podreis descargar desde la web:\nwww.associacioader.com\una nueva versión V105 (26-10-2020)\n en la cual podreis usar el sistema M17."

cd /home/pi/mvoice
./mvoice
