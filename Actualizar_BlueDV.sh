#!/bin/bash
clear
while true
do
clear
# path usuario
usuario=$(awk "NR==1" /home/pi/.config/autostart/usuario)

# Versión
SCRIPTS_version=$(awk "NR==1" $usuario/.config/autostart/version)

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"

echo "${VERDE}"
echo "   ********************************************************************"
echo "   *               Script para actualizar BlueDV                      *"
echo -n "${ROJO}"
echo "   *                      $SCRIPTS_version by EA3EIZ                               *"
echo -n "${VERDE}"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar BlueDV Version 1.0.0.9560"
echo "\33[1;36m   2)\33[1;37m Volver a la versión BlueDV Version 1.0.0.9441"
#echo "\33[1;36m   2)\33[1;37m Actualizar DV4mini Control Panel (Stick ID:8D-6E-8C V1,77)"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: " 
read escoger_menu
echo ""
case $escoger_menu in

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

