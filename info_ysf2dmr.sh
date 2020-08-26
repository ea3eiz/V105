#!/bin/bash
Frecuencia="Frecuencia:"
Puerto="Puerto:" 
Servidor="Servidor:"
Memoria="Memoria:"
informacion="INFORMACIÓN"

mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMFUSION.ini)
puerto=`expr substr $mode 11 9`
puerto="  "$puerto

frecuencia=$(awk "NR==2" /home/pi/YSF2DMR/YSF2DMR.ini)
frecuencia=`expr substr $frecuencia 13 17`
frecuencia=$frecuencia

address=`grep -n -m 1 "^Address=" /home/pi/YSF2DMR/YSF2DMR.ini`
buscar=":"
caracteres=`expr index $address $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_address=`expr substr $address 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_address" /home/pi/YSF2DMR/YSF2DMR.ini)
address=`expr substr $address 12 35`
address="  "$address

memoria=$(awk "NR==55" /home/pi/YSF2DMR/YSF2DMR.ini)

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"
#figlet $puerto
echo "${BLANCO}"
echo "  $informacion (YSF2DMR)"
echo "${VERDE}"
echo "  ******************************************"
echo ""
echo "${CIAN}  $Frecuencia ${AMARILLO}$frecuencia   "
echo "${CIAN}  $Puerto   ${AMARILLO}$puerto   "
echo "${CIAN}  $Servidor ${AMARILLO}$address   "
echo "${CIAN}  Memoria:    ${AMARILLO}$memoria   "
echo "${VERDE}"
echo "  ******************************************"

echo -n "${CIAN}  Pulsa enter para cerrar esta ventana "
read a

# echo -n "${MARRON}"
# echo -n "  Se cerrará en 10."
# sleep 1
# echo -n "9."
# sleep 1
# echo -n "8."
# sleep 1
# echo -n "7."
# sleep 1
# echo -n "6."
# sleep 1
# echo -n "5."
# sleep 1
# echo -n "4."
# sleep 1
# echo -n "3."
# sleep 1
# echo -n "2."
# sleep 1
# echo -n "1."
# sleep 1
# echo -n "0"
# sleep 1