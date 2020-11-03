#!/bin/bash

cd /home/pi/Desktop
sudo cp ABRIR_DMR2M17.desktop /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/; sudo sh ejecutar_DMR2M17.sh'" /home/pi/Abrir_MMDVMBM.desktop
sed -i "7c Icon=/home/pi/V105/ICONO_M17_OFF.png" /home/pi/ABRIR_DMR2M17.desktop
sed -i "4c Name[es_ES]=Abrir DMR2M17" /home/pi/ABRIR_DMR2M17.desktop
#sed -i "7c MMDVMBM=ON" /home/pi/status.ini
cd /home/pi
sudo cp ABRIR_DMR2M17.desktop /home/pi/Desktop

sudo rm /home/pi/ABRIR_DMR2M17.desktop



sudo killall DMR2M17
SUDO KILLALL MMDBMDMR2M17



  