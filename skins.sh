#!/bin/bash
clear
while true
do
clear
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
#Colores 
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

echo "${VERDE}"
echo "  ****************************************************************************"
echo -n "${CIAN}"
echo "                          Script para cambiar Skins       "
echo -n "${ROJO}"
echo "                                 $SCRIPTS_version by EA3EIZ"    
echo -n "${VERDE}"
echo "  ****************************************************************************"

echo "${CIAN}  1)${BLANCO} Elegir Skin 1"
echo ""
echo "${CIAN}  2)${VERDE} Elegir Skin 2"
echo ""
echo "  ${ROJO}0) Salir "
echo ""
echo -n "\33[1;36m  Elige una opción " 
read escoger_menu
echo ""
case $escoger_menu in
1) echo ""
while true
do
clear                     
                        instalarsi=S
                        case $instalarsi in
                        [sS]* ) echo ""
                        clear
                        cd /home/pi/$SCRIPTS_version/
                        sh colocar_iconos1.sh                 
                        break;;
                        [nN]* ) echo ""
                        clear
                        exit;
                        break;;
esac
done;;
2) echo ""
while true
do
clear                     
                        instalarsi=S
                        case $instalarsi in
                        [sS]* ) echo ""
                        clear
                        cd /home/pi/$SCRIPTS_version/
                        sh colocar_iconos2.sh                 
                        break;;
                        [nN]* ) echo ""
                        clear
                        exit;
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

