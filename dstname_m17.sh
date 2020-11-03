#!/bin/bash
clear
while true
do
clear
# path usuario
usuario=$(awk "NR==1" /home/pi/.config/autostart/usuario)

# path Versión
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
echo "   ***************************************************************************************"
echo -n "${CIAN}"
echo "                          Script para Elegir DstName & DstAddress                         "
echo -n "${ROJO}"
echo "                                       $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   ***************************************************************************************"
echo ""
echo "${AMARILLO}      DstName        DstAddress"
echo "      =========      ========================"
echo  "${CIAN}   1)${BLANCO} M17-ESP D      IP: 5.249.148.156"
echo  "${CIAN}   2)${BLANCO} M17-EA3 Y      IP: aderdigital.ddns.net"

echo ""
echo "   ${ROJO}0) Salir"
echo ""
echo -n "${CIAN}   Elige una opción: " 
read escoger_menu

case $escoger_menu in

1) echo ""
while true
do                         
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "4c DstName=M17-ESP D" $usuario/DMR2M17/DMR2M17.ini
                          sed -i "5c DstAddress=5.249.148.156" $usuario/DMR2M17/DMR2M17.ini
                          exit
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
2) echo ""
while true
do                         
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "4c DstName=M17-EA3 Y" $usuario/DMR2M17/DMR2M17.ini
                          sed -i "5c DstAddress=aderdigital.ddns.net" $usuario/DMR2M17/DMR2M17.ini
                          exit
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
0) echo ""
exit;;	
esac
done

