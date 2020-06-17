#!/bin/bash

Frecuencia="Frecuencia:"
Puerto="Puerto:" 
Servidor="Servidor:"
Memoria="Memoria:"
informacion="INFORMACIÓN"

DIRECTORIO="MMDVMBM.ini"
linea="1c"

mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/$DIRECTORIO)
puerto=`expr substr $mode 11 9`
puerto="  "$puerto

frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/$DIRECTORIO)
frecuencia=`expr substr $frecuencia 13 17`
frecuencia=$frecuencia

id=$(awk "NR==3" /home/pi/MMDVMHost/$DIRECTORIO)
id=`expr substr $id 4 9`
id=$id

indicativo=$(awk "NR==2" /home/pi/MMDVMHost/$DIRECTORIO)
indicativo=`expr substr $indicativo 10 8`
indicativo=$indicativo

address=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
caracteres=`expr index $address $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_address=`expr substr $address 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_address" /home/pi/MMDVMHost/$DIRECTORIO)
address=`expr substr $address 13 35`
address="  "$address

memoria=$(awk "NR==$linea" /home/pi/.local/info_memorias)

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

echo "${BLANCO}"
echo "  $informacion (BM)"
echo "${VERDE}"
echo "  ******************************************"
echo ""
echo "${CIAN}  Indicativo:\t${AMARILLO}$indicativo   "
echo "${CIAN}  Id: \t\t${AMARILLO}$id   "
echo "${CIAN}  $Frecuencia\t${AMARILLO}$frecuencia   "
echo "${CIAN}  $Puerto\t${AMARILLO}$puerto   "
echo "${CIAN}  $Servidor\t${AMARILLO}$address   "
echo "${CIAN}  $Memoria\t${AMARILLO}$memoria   "
echo "${VERDE}"
echo "  ******************************************"
echo "${ROJO}"

echo -n "  Se cerrará en 5."
sleep 1
echo -n "4."
sleep 1
echo -n "3."
sleep 1
echo -n "2."
sleep 1
echo -n "1."
sleep 1
echo -n "0"
sleep 1
read a