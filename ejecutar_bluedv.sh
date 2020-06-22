#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_BlueDV.desktop /home/pi
sleep 1
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_bluedv.sh'" /home/pi/Abrir_BlueDV.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_BLUEDV_ON.png" /home/pi/Abrir_BlueDV.desktop
sed -i "10c Name[es_ES]=Cerrar BlueDV" /home/pi/Abrir_BlueDV.desktop
sed -i "2c BlueDV=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_BlueDV.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_BlueDV.desktop

zenity --warning --title=AVISO  --width=500 --text "El BlueDv tardará varios segundos en abrirse \ndependiendo de la velocidad de su Raspberry\nsea paciente y espere que se abra."





cd /home/pi/bluedv/
mono BlueDV.exe

