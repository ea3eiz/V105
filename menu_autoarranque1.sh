#!/bin/bash

script="Script Modificar Autoarranque"
conectar="Conectar"
desconectar="Desconectar"
estado="Estado"
restablece="RESTABLECER LOS AUTOARRANQUES A OFF"
salir="Salir"
elige="Elige una opción"
reset="OJO!! ESTO PONDRÁ TODOS LOS AUTOARRANQUES EN OFF"

while true
do
clear
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
version=`expr substr $SCRIPTS_version 2 2`
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

echo "${VERDE}"
echo "   ************************************************************"
echo -n "${CIAN}"
echo "                    $script    "
echo -n "${ROJO}"
echo "                          $SCRIPTS_version by EA3EIZ"
echo -n "${VERDE}"
echo "   ************************************************************"
#==================================================================================
dstar=`grep "D-STAR" /home/pi/.local/autoarranque.ini`
dstar=`expr substr $dstar 8 3`
if [ $dstar = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   1)$desconectar \t${VERDE}ircDDB"
else
echo "   ${ROJO}$estado OFF ${CIAN}   1)$conectar \t${ROJO}ircDDB"
fi
#==================================================================================

#================================================================================== 

bluedv=`grep "BlueDV" /home/pi/.local/autoarranque.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   2)$desconectar \t${VERDE}BlueDV"
else
echo "   ${ROJO}$estado OFF ${CIAN}   2)$conectar \t${ROJO}BlueDV"
fi
#==================================================================================

#==================================================================================
C4F=`grep "C4F" /home/pi/.local/autoarranque.ini`
C4F=`expr substr $C4F 5 3`
if [ $C4F = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   3$desconectar \t${VERDE}YSF"
else
echo "   ${ROJO}$estado OFF ${CIAN}   3)$conectar \t${ROJO}YSF"
fi
#==================================================================================

#==================================================================================
DV4mini=`grep "DV4mini" /home/pi/.local/autoarranque.ini`
DV4mini=`expr substr $DV4mini 9 3`
if [ $DV4mini = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   4)$desconectar \t${VERDE}DV4mini"
else
echo "   ${ROJO}$estado OFF ${CIAN}   4)$conectar \t${ROJO}DV4mini"
fi
#==================================================================================

#==================================================================================

MMDVMPLACA=`grep "MMDVMPLACA" /home/pi/.local/autoarranque.ini`
MMDVMPLACA=`expr substr $MMDVMPLACA 12 3`
if [ $MMDVMPLACA = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   5)$desconectar \t${VERDE}Radio"
else
echo "   ${ROJO}$estado OFF ${CIAN}   5)$conectar \t${ROJO}Radio"
fi
#==================================================================================

#==================================================================================
MMDVMPLUS=`grep "MMDVMPLUS" /home/pi/.local/autoarranque.ini`
MMDVMPLUS=`expr substr $MMDVMPLUS 11 3`
if [ $MMDVMPLUS = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   6)$desconectar \t${VERDE}DMR+"
else
echo "   ${ROJO}$estado OFF ${CIAN}   6)$conectar \t${ROJO}DMR+"
fi
#==================================================================================

#==================================================================================
MMDVMLIBRE=`grep "MMDVMLIBRE" /home/pi/.local/autoarranque.ini`
MMDVMLIBRE=`expr substr $MMDVMLIBRE 12 3`
if [ $MMDVMLIBRE = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   7)$desconectar \t${VERDE}ESPECIAL"
else
echo "   ${ROJO}$estado OFF ${CIAN}   7)$conectar \t${ROJO}ESPECIAL"
fi
#==================================================================================

#==================================================================================
MMDVMBM=`grep "MMDVMBM" /home/pi/.local/autoarranque.ini`
MMDVMBM=`expr substr $MMDVMBM 9 3`
if [ $MMDVMBM = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   8)$desconectar \t${VERDE}BM"
else
echo "   ${ROJO}$estado OFF ${CIAN}   8)$conectar \t${ROJO}BM"
fi
#==================================================================================

#==================================================================================
SVXLINK=`grep "SVXLINK" /home/pi/.local/autoarranque.ini`
SVXLINK=`expr substr $SVXLINK 9 3`
if [ $SVXLINK = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}   9)$desconectar \t${VERDE}SVXLINK"
else
echo "   ${ROJO}$estado OFF ${CIAN}   9)$conectar \t${ROJO}SVXLINK"
fi
#==================================================================================

#==================================================================================
solod=`grep "SOLO_DSTAR" /home/pi/.local/autoarranque.ini`
solod=`expr substr $solod 12 3`
if [ $solod = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  10)$desconectar \t${VERDE}SOLO_DSTAR"
else
echo "   ${ROJO}$estado OFF ${CIAN}  10)$conectar \t${ROJO}SOLO_DSTAR"
fi
#=================================================================================

#==================================================================================
solof=`grep "SOLO_FUSION" /home/pi/.local/autoarranque.ini`
solof=`expr substr $solof 13 3`
if [ $solof = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  11)$desconectar \t${VERDE}SOLO_FUSION"
else
echo "   ${ROJO}$estado OFF ${CIAN}  11)$conectar \t${ROJO}SOLO_FUSION"
fi
#=================================================================================

#==================================================================================
dvrptrq=`grep "DVRPTR" /home/pi/.local/autoarranque.ini`
dvrptrq=`expr substr $dvrptrq 8 3`
if [ $dvrptrq = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  12)$desconectar \t${VERDE}DVRPTR"
else
echo "   ${ROJO}$estado OFF ${CIAN}  12)$conectar \t${ROJO}DVRPTR"
fi
#=================================================================================

#==================================================================================
ysfdmr=`grep "F2DMR" /home/pi/.local/autoarranque.ini`
ysfdmr=`expr substr $ysfdmr 7 3`
if [ $ysfdmr = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  13)$desconectar \t${VERDE}YSF2DMR"
else
echo "   ${ROJO}$estado OFF ${CIAN}  13)$conectar \t${ROJO}YSF2DMR"
fi
#=================================================================================

#==================================================================================
dstarrepeater=`grep "dstarrepeater" /home/pi/.local/autoarranque.ini`
dstarrepeater=`expr substr $dstarrepeater 15 3`
if [ $dstarrepeater = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  14)$desconectar \t${VERDE}D-STAR REPEATER"
else
echo "   ${ROJO}$estado OFF ${CIAN}  14)$conectar \t${ROJO}D-STAR REPEATER"
fi
#=================================================================================

#==================================================================================
ambeserver=`grep "AMBE_SERVER" /home/pi/.local/autoarranque.ini`
ambeserver=`expr substr $ambeserver 13 3`
if [ $ambeserver = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  15)$desconectar \t${VERDE}AMBE SERVER"
else
echo "   ${ROJO}$estado OFF ${CIAN}  15)$conectar \t${ROJO}AMBE SERVER"
fi
#=================================================================================

#==================================================================================
dmrysf=$(awk "NR==16" /home/pi/.local/autoarranque.ini)
dmrysf=`expr substr $dmrysf 9 3`
if [ $dmrysf = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  16)$desconectar \t${VERDE}DMR2YSF"
else
echo "   ${ROJO}$estado OFF ${CIAN}  16)$conectar \t${ROJO}DMR2YSF"
fi
#=================================================================================

#==================================================================================
dmrnxdn=$(awk "NR==17" /home/pi/.local/autoarranque.ini)
dmrnxdn=`grep "DMR2NXDN" /home/pi/.local/autoarranque.ini`
dmrnxdn=`expr substr $dmrnxdn 10 3`
if [ $dmrnxdn = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  17)$desconectar \t${VERDE}DMR2NXDN"
else
echo "   ${ROJO}$estado OFF ${CIAN}  17)$conectar \t${ROJO}DMR2NXDN"
fi
#=================================================================================

#==================================================================================
nxdn=$(awk "NR==18" /home/pi/.local/autoarranque.ini)
nxdn=`expr substr $nxdn 6 3`
if [ $nxdn = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  18)$desconectar \t${VERDE}NXDN"
else
echo "   ${ROJO}$estado OFF ${CIAN}  18)$conectar \t${ROJO}NXDN"
fi
#=================================================================================

#=========================================================================*========
dmrgateway=$(awk "NR==19" /home/pi/.local/autoarranque.ini)
dmrgateway=`expr substr $dmrgateway 12 3`
if [ $dmrgateway = "ON" ]
then
echo "   ${VERDE}$estado  ON ${CIAN}  19)$desconectar \t${VERDE}DMRGateway"
else
echo "   ${ROJO}$estado OFF ${CIAN}  19)$conectar \t${ROJO}DMRGateway"
fi
#=========================================================================*========

echo ""

echo "\33[1;36m   27)\33[1;32m *** $restablece"

echo ""
echo -n "\33[1;36m   $elige: " 
read escoger_menu
echo ""

case $escoger_menu in
1) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $dstar = "ON" ]
                            then
                       		cd /home/pi/.config/autostart
                       		sudo rm IRCDDB.desktop
			                sed -i "1c D-STAR=OFF" /home/pi/.local/autoarranque.ini
                            else
                       		cd /home/pi/AUTOARRANQUEV11
                  		    sudo cp IRCDDB.desktop /home/pi/.config/autostart
			                sed -i "1c D-STAR=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;

2) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $bluedv = "ON" ]
                            then
                       		cd /home/pi/.config/autostart
                       		sudo rm BLUEDV.desktop
			                sed -i "2c BlueDV=OFF" /home/pi/.local/autoarranque.ini
                            else
                       		cd /home/pi/AUTOARRANQUEV11
                       		sudo cp BLUEDV.desktop /home/pi/.config/autostart
			                sed -i "2c BlueDV=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
3) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $C4F = "ON" ]
                            then
                       		cd /home/pi/.config/autostart
                       		sudo rm YSF.desktop
			                sed -i "3c C4F=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp YSF.desktop /home/pi/.config/autostart
                            sed -i "3c C4F=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
4) echo ""
while true
do
clear            
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $DV4mini = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm DV4MINI.desktop
                            sed -i "4c DV4mini=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp DV4MINI.desktop /home/pi/.config/autostart
                            sed -i "4c DV4mini=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
5) echo ""
while true
do
clear              
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $MMDVMPLACA = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm RADIO.desktop
                            sed -i "5c MMDVMPLACA=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp RADIO.desktop /home/pi/.config/autostart
                            sed -i "5c MMDVMPLACA=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
6) echo ""
while true
do
clear              
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $MMDVMPLUS = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm DMRPLUS.desktop
                            sed -i "6c MMDVMPLUS=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp DMRPLUS.desktop /home/pi/.config/autostart
                            sed -i "6c MMDVMPLUS=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
7) echo ""
while true
do
clear              
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $MMDVMLIBRE = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm LIBRE.desktop
                            sed -i "10c MMDVMLIBRE=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp LIBRE.desktop /home/pi/.config/autostart
                            sed -i "10c MMDVMLIBRE=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;                        
esac
done;;
8) echo ""
while true
do
clear              
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $MMDVMBM = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm BM.desktop
                            sed -i "7c MMDVMBM=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp BM.desktop /home/pi/.config/autostart
                            sed -i "7c MMDVMBM=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
9) echo ""
while true
do
clear	        
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $SVXLINK = "ON" ]
                            then
                            cd /home/pi/.config/autostart
      		                sudo rm SVXLINK.desktop
			                sed -i "8c SVXLINK=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp SVXLINK.desktop /home/pi/.config/autostart
			                sed -i "8c SVXLINK=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
10) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $solod = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm DSTARSOLO_05.desktop
                            sed -i "11c SOLO_DSTAR=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp DSTARSOLO_05.desktop /home/pi/.config/autostart
                            sed -i "11c SOLO_DSTAR=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
11) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $solof = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm FUSIONSOLO.desktop
                            sed -i "12c SOLO_FUSION=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp FUSIONSOLO.desktop /home/pi/.config/autostart
                            sed -i "12c SOLO_FUSION=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
12) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $dvrptrq = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm DVRPTR.desktop
                            sed -i "13c DVRPTR=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp DVRPTR.desktop /home/pi/.config/autostart
                            sed -i "13c DVRPTR=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
13) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $ysfdmr = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm FUSIONSOLO.desktop
                            sudo rm YSF2DMR.desktop
                            sed -i "15c F2DMR=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp YSF2DMR.desktop /home/pi/.config/autostart
                            sed -i "15c F2DMR=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
14) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $dstarrepeater = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm dstarrepeater.desktop
                            sed -i "9c dstarrepeater=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp dstarrepeater.desktop /home/pi/.config/autostart
                            sed -i "9c dstarrepeater=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
15) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $ambeserver = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm AMBE_SERVER.desktop
                            sed -i "14c AMBE_SERVER=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp AMBE_SERVER.desktop /home/pi/.config/autostart
                            sed -i "14c AMBE_SERVER=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
16) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $dmrysf = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm DMR2YSF.desktop
                            sed -i "16c DMR2YSF=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp DMR2YSF.desktop /home/pi/.config/autostart
                            sed -i "16c DMR2YSF=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
17) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $dmrnxdn = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm DMR2NXDN.desktop
                            sed -i "17c DMR2NXDN=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp DMR2NXDN.desktop /home/pi/.config/autostart
                            sed -i "17c DMR2NXDN=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
18) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $nxdn = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm NXDN.desktop
                            sed -i "18c NXDN=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp NXDN.desktop /home/pi/.config/autostart
                            sed -i "18c NXDN=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
19) echo ""
while true
do
clear
	                     	actualizar=S
		                   	case $actualizar in
			                [sS]* ) echo ""
                            if [ $dmrgateway = "ON" ]
                            then
                            cd /home/pi/.config/autostart
                            sudo rm DMRGateway.desktop
                            sed -i "19c DMRGateway=OFF" /home/pi/.local/autoarranque.ini
                            else
                            cd /home/pi/AUTOARRANQUEV11
                            sudo cp DMRGateway.desktop /home/pi/.config/autostart
                            sed -i "19c DMRGateway=ON" /home/pi/.local/autoarranque.ini
                            fi
			                break;;
			                [nN]* ) echo ""
			                break;;
esac
done;;
27) echo ""
while true
do
clear
                        echo "\33[1;31m" #color rojo
                        echo " *****************************************************"
                        echo " ** $reset *"
                        echo " *****************************************************"
                        echo -n "${BLANCO}  Quieres seguir? S/N ${AMARILLO} /  ${CIAN}You want to continue? Y/N "
                        read -p ' ' ejecutar1
                        case $ejecutar1 in
                        [sSyY]* ) echo ""

                        cd /home/pi/.config/autostart
                        sudo rm IRCDDB.desktop
                        sudo rm BM.desktop
                        sudo rm BLUEDV.desktop
                        sudo rm YSF.desktop
                        sudo rm DV4MINI.desktop
                        sudo rm RADIO.desktop
                        sudo rm DMRPLUS.desktop
                        sudo rm LIBRE.desktop
                        sudo rm SVXLINK.desktop
                        sudo rm DSTARSOLO_05.desktop
                        sudo rm FUSIONSOLO.desktop
                        sudo rm DVRPTR.desktop
                        sudo rm YSF2DMR.desktop
                        sudo rm dstarrepeater.desktop
                        sudo rm AMBE_SERVER.desktop
                        sudo rm DMR2YSF.desktop
                        sudo rm DMR2NXDN.desktop
                        sudo rm NXDN.desktop
                        sudo rm DMRGateway.desktop

sed -i "1c D-STAR=OFF" /home/pi/.local/autoarranque.ini
sed -i "2c BlueDV=OFF" /home/pi/.local/autoarranque.ini
sed -i "3c C4F=OFF" /home/pi/.local/autoarranque.ini
sed -i "4c DV4mini=OFF" /home/pi/.local/autoarranque.ini
sed -i "5c MMDVMPLACA=OFF" /home/pi/.local/autoarranque.ini
sed -i "6c MMDVMPLUS=OFF" /home/pi/.local/autoarranque.ini
sed -i "7c MMDVMBM=OFF" /home/pi/.local/autoarranque.ini
sed -i "8c SVXLINK=OFF" /home/pi/.local/autoarranque.ini
sed -i "9c dstarrepeater=OFF" /home/pi/.local/autoarranque.ini
sed -i "10c MMDVMLIBRE=OFF" /home/pi/.local/autoarranque.ini
sed -i "11c SOLO_DSTAR=OFF" /home/pi/.local/autoarranque.ini
sed -i "12c SOLO_FUSION=OFF" /home/pi/.local/autoarranque.ini
sed -i "13c DVRPTR=OFF" /home/pi/.local/autoarranque.ini
sed -i "14c AMBE_SERVER=OFF" /home/pi/.local/autoarranque.ini
sed -i "15c F2DMR=OFF" /home/pi/.local/autoarranque.ini
sed -i "16c DMR2YSF=OFF" /home/pi/.local/autoarranque.ini
sed -i "17c DMR2NXDN=OFF" /home/pi/.local/autoarranque.ini
sed -i "18c NXDN=OFF" /home/pi/.local/autoarranque.ini
sed -i "19c DMRGateway=OFF" /home/pi/.local/autoarranque.ini

                        exit;
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
0) echo "."
clear
exit;;	
esac
done

