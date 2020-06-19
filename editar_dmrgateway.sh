#!/bin/bash
while true
do
clear

#Editor DMRGateway Brabdmeister
DIRECTORIO="DMRGateway"

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"
echo "${VERDE}"
echo "  ***************************************************************************"
echo "                  Script Modificar $DIRECTORIO             \33[1;31m by EA3EIZ\33[1;32m   "
echo "  ***************************************************************************"
echo "${MARRON}"
echo "  Modificar Fichero MMDVMHost/DMRGateway.ini"
echo "  =========================================="

echo -n "${CIAN}   a)${GRIS} Modificar Indicativo            - ${AMARILLO}"
indicativo=$(awk "NR==2" /home/pi/MMDVMHost/MMDVMDMRGateway.ini)
echo "$indicativo"

echo -n "${CIAN}   b)${GRIS} Modificar Id                    - ${AMARILLO}"
id=$(awk "NR==3" /home/pi/MMDVMHost/MMDVMDMRGateway.ini)
echo "$id"

echo -n "${CIAN}   1)${GRIS} Modificar RXFrequency           - ${AMARILLO}"
contenido_rxf=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMDMRGateway.ini)
echo "$contenido_rxf"

echo -n "${CIAN}   2)${GRIS} Modificar TXFrequency           - ${AMARILLO}"
contenido_txf=$(awk "NR==14" /home/pi/MMDVMHost/MMDVMDMRGateway.ini)
echo "$contenido_txf"

echo -n "${CIAN}   c)${GRIS} Modificar Port modem            - ${AMARILLO}"
mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMDMRGateway.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMDMRGateway.ini)
echo "$mode"

echo -n "\33[1;36m   d)\33[0m Timeout                         - \33[1;33m"
timeo=`grep -n -m 1 '\<Timeout\>' /home/pi/MMDVMHost/MMDVMDMRGateway.ini`
timeo1=`expr substr $timeo 3 30`
echo "$timeo1"

echo -n "\33[1;36m   e)\33[0m Modificar Duplex                - \33[1;33m"
dup=`grep -n -m 1 '\<Duplex\>' //home/pi/MMDVMHost/MMDVMDMRGateway.ini`
dup1=`expr substr $dup 3 30`
echo "$dup1"

echo "${CIAN}   f)${BLANCO} Abrir fichero MMDVMDMRGateway.ini para hacer modificaciones\33[1;33m"

echo "${MARRON}"
echo "  Modificar Fichero DMRGateway/DMRGateway.ini"
echo "  ==========================================="
echo -n "${CIAN}   3)${GRIS} Modificar Location              - ${AMARILLO}"
contenido_location=$(awk "NR==33" /home/pi/DMRGateway/DMRGateway.ini)
echo "$contenido_location"

echo -n "${CIAN}   4)${GRIS} Modificar URL                   - ${AMARILLO}"
contenido_url=$(awk "NR==35" /home/pi/DMRGateway/DMRGateway.ini)
echo "$contenido_url"

echo -n "${CIAN}   6)${GRIS} Modificar XLX Startup           - ${AMARILLO}"
Startup=$(awk "NR==47" /home/pi/DMRGateway/DMRGateway.ini)
echo "$Startup"

echo -n "${CIAN}   7)${GRIS} Modificar XLX Module            - ${AMARILLO}"
Module=$(awk "NR==53" /home/pi/DMRGateway/DMRGateway.ini)
echo "$Module"

echo -n "${CIAN}   8)${GRIS} Modificar Address Brandmeister  - ${AMARILLO}"
address_BM=$(awk "NR==59" /home/pi/DMRGateway/DMRGateway.ini)
echo "$address_BM"

echo -n "${CIAN}   9)${GRIS} Modificar Password Brandmeister - ${AMARILLO}"
pas_BM=$(awk "NR==78" /home/pi/DMRGateway/DMRGateway.ini)
echo "$pas_BM"

echo -n "${CIAN}  10)${GRIS} Modificar Address DMR+          - ${AMARILLO}"
address_PLUS=$(awk "NR==86" /home/pi/DMRGateway/DMRGateway.ini)
echo "$address_PLUS"

echo -n "${CIAN}  11)${GRIS} Modificar Address HBLink        - ${AMARILLO}"
address_HBLink=$(awk "NR==118" /home/pi/DMRGateway/DMRGateway.ini)
echo "$address_HBLink"

echo -n "${CIAN}  12)${GRIS} Modificar Password HBLink       - ${AMARILLO}"
password_HBLink=$(awk "NR==123" /home/pi/DMRGateway/DMRGateway.ini)
echo "$password_HBLink"

echo "${CIAN}   g)${BLANCO} Abrir fichero DMRGateway.ini para hacer modificaciones\33[1;33m"

echo ""
echo "${CIAN}   0)\33[1;31m Salir"
echo ""
echo -n "${CIAN}   Elije una opción:" 
read escoger_menu
case $escoger_menu in
1) echo ""
while true
do
                          echo "Valor actual del RXFrequency: ${AMARILLO}${contenido_rxf#*=}\33[1;37m"
           	              read -p 'Introduce RXFrequency:        ' rxfre
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sed -i "13c RXFrequency=$rxfre" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
2) echo ""
while true
do
                          echo "Valor actual del TXFrequency: ${AMARILLO}${contenido_txf#*=}\33[1;37m"
                          read -p 'Introduce TXFrequency:        ' txfre
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "14c TXFrequency=$txfre" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
3) echo ""
while true
do
                          echo "Valor de la Ciudad: ${AMARILLO}${contenido_location#*=}\33[1;37m"
                          read -p 'Introduce tu Ciudad ' loc1
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sed -i "33c Location=$loc1" /home/pi/DMRGateway/DMRGateway.ini
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
4) echo ""
while true
do
                          echo "Valor de  la  URL   Web: ${AMARILLO}${contenido_url#*=}\33[1;37m"
           	              read -p 'Introduce URL de tu Web: ' ur1
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
			                    ur1=`echo "$ur1" | tr -d '[[:space:]]'`
                          sed -i "35c URL=$ur1" /home/pi/DMRGateway/DMRGateway.ini
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
a) echo ""
while true
do
                          echo "Valor  actual  del Indicativo: ${AMARILLO}${indicativo#*=}\33[1;37m"
                          read -p 'Introduce el Indicativo ' indicativo
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          indicativo=`echo "$indicativo" | tr [:lower:] [:upper:]`
                          sed -i "2c Callsign=$indicativo" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
b) echo ""
while true
do
                          echo "Valor  actual  de la Id: ${AMARILLO}${id#*=}\33[1;37m"
                          read -p 'Introduce la Id ' id
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "3c Id=$id" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
6) echo ""
while true
do
                          

                          echo "Valor  actual  del XLX: ${AMARILLO}${Startup#*=}\33[1;37m"
                          read -p 'Introduce el número del XLX ' xlx
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "47c Startup=$xlx" /home/pi/DMRGateway/DMRGateway.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac                          
done;;
7) echo ""
while true
do
                          echo "Valor actual del Module XLX: ${AMARILLO}${Module#*=}\33[1;37m"
                          read -p 'Introduce la letra del Module XLX ' modu
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          
                          sed -i "53c Module=$modu" /home/pi/DMRGateway/DMRGateway.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
8) echo ""
while true
do
                      echo "Valor actual del Master: ${AMARILLO}${address_BM#*=}\33[1;37m"
                      read -p 'Brandmeister Spain = master.spain-dmr.es: ' master
                      actualizar=S 
                      case $actualizar in
                      [sS]* ) echo ""
                      master=`echo "$master" | tr -d '[[:space:]]'`
                      master=`echo "$master" | tr [:upper:] [:lower:]`
                      sed -i "59c Address=$master" /home/pi/DMRGateway/DMRGateway.ini
                      break;;
                      [nN]* ) echo ""
                      break;;
esac
done;;
9) echo ""
while true
do
                      echo "Valor actual del Master: ${AMARILLO}${pas_BM#*=}\33[1;37m"
                      read -p 'Password Brandmeister: ' pasbm
                      actualizar=S 
                      case $actualizar in
                      [sS]* ) echo ""
                      sed -i "78c Password=$pasbm" /home/pi/DMRGateway/DMRGateway.ini
                      break;;
                      [nN]* ) echo ""
                      break;;
esac
done;;
10) echo ""
while true
do
                     
                      echo "Valor actual del Master: ${AMARILLO}${address_PLUS#*=}\33[1;37m"
                      read -p 'Address DMR+ Spain IPSC2-EA-Hotspot = 212.237.3.141: ' master1
                      actualizar=S 
                      case $actualizar in
                      [sS]* ) echo ""
                      master1=`echo "$master1" | tr -d '[[:space:]]'`
                      master1=`echo "$master1" | tr [:upper:] [:lower:]`
                      sed -i "86c Address=$master1" /home/pi/DMRGateway/DMRGateway.ini
                      break;;
                      [nN]* ) echo ""
                      break;;
esac
done;;

11) echo ""
while true
do
                      echo "Valor actual del Master: ${AMARILLO}${address_HBLink#*=}\33[1;37m"
                      read -p 'Introduce Address del HBLink: ' master2
                      actualizar=S 
                      case $actualizar in
                      [sS]* ) echo ""
                      master2=`echo "$master2" | tr -d '[[:space:]]'`
                      master2=`echo "$master2" | tr [:upper:] [:lower:]`
                      sed -i "118c Address=$master2" /home/pi/DMRGateway/DMRGateway.ini
                      break;;
                      [nN]* ) echo ""
                      break;;
esac
done;;
12) echo ""
while true
do
                          echo "Valor actual del Password HBLink: ${AMARILLO}${password_HBLink#*=}\33[1;37m"
           	              read -p 'Introduce el Password para HBLink: ' pas1
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
			                    pas1=`echo "$pas1" | tr -d '[[:space:]]'`
                          sed -i "123c Password=$pas1" /home/pi/DMRGateway/DMRGateway.ini
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
c) echo ""
while true
do
                        port_modem=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMDMRGateway.ini)
                        echo "   Valor del Port: ${AMARILLO}$port_modem"
                        echo "${GRIS}   Ejp. modem,/dev/ttyAMA1,/dev/ttyACM1,/dev/ttyUSB1/,dev/ttyS0,/dev/rfcomm0"
                        echo -n "${CIAN}   Introduce Port: ${AMARILLO}"
                        read -p '' port
                        actualizar=S 
                        case $actualizar in
			            [sS]* ) echo ""
                        letra=c
                        numero_linea_port=$numero_linea_port$letra
                        sed -i "$numero_linea_port Port=$port" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
			            break;;
			            [nN]* ) echo ""
			            break;;
esac
done;;
d) echo ""
while true
do
timeo=`grep -n -m 1 -c '\<Timeout\>' /home/pi/MMDVMHost/MMDVMDMRGateway.ini`
if [ $timeo = 0 ]; then
echo "no existe este comando"
else
timeo=`grep -n -m 1 '\<Timeout\>' /home/pi/MMDVMHost/MMDVMDMRGateway.ini`
timeo1=`expr substr $timeo 5 30`
fi
buscar=":"
largo=`expr index $timeo $buscar`
echo "Valor actual del Timeout = : \33[1;33m${timeo1#*=}\33[1;37m"
                      read -p 'Introcuce el valor para Timeout (valor optimo de 0 a 180): ' timeou
                          letra=c
                          if [ $largo = 2 ]
                          then
                          linea=`expr substr $timeo 1 1`
                          else
                          linea=`expr substr $timeo 1 2`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                    [sS]* ) echo ""
                    V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea Timeout=$timeou" /home/pi/MMDVMHost/MMDVMDMRGateway.ini 


        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
e) echo ""
while true
do
buscar=":"
largo=`expr index $dup $buscar`
echo "Valor actual del Duplex: \33[1;33m${dup#*=}\33[1;37m"
           	          read -p 'Para un repetidor Duplex=1 Para un Hotspot simple Duplex=0: ' duplex
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $dup 1 1`
                          else
                          linea=`expr substr $dup 1 1`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Duplex=$duplex" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
                    
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
f) echo ""
while true
do
                          
                        actualizar=S 
                        case $actualizar in
			      [sS]* ) echo ""
                        cd /home/pi/MMDVMHost
                        geany MMDVMDMRGateway.ini
			      break;;
			      [nN]* ) echo ""
			      break;;
esac
done;;
g) echo ""
while true
do
                          
                        actualizar=S 
                        case $actualizar in
			      [sS]* ) echo ""
                        cd /home/pi/DMRGateway
                        geany DMRGateway.ini
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