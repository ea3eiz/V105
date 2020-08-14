#!/bin/bash
clear
echo "\33[1;32m ACTUALIZANDO IDS INDICATIVOS"
echo "\33[1;32m ACTUALIZANDO DMRIds.dat para DVSWITCH"
sleep 10
clear
var=`grep -n -m 1 '\<DMRIDPATH\>' /home/pi/MMDVMHost/linux/DMRIDUpdate.sh`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
letrac=c
linea_sed=$numero_linea$letrac
sed -i "$linea_sed DMRIDPATH=/home/pi/MMDVMHost" /home/pi/MMDVMHost/linux/DMRIDUpdate.sh

# DMR IDs now served by RadioID.net
var=`grep -n -m 1 '\<DATABASEURL\>' /home/pi/MMDVMHost/linux/DMRIDUpdate.sh`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
letrac=c
linea_sed=$numero_linea$letrac
sed -i "$linea_sed DATABASEURL='https://ham-digital.org/status/users.csv'" /home/pi/MMDVMHost/linux/DMRIDUpdate.sh


sudo sh /home/pi/MMDVMHost/linux/DMRIDUpdate.sh

cp /home/pi/MMDVMHost/DMRIds.dat /var/lib/mmdvm

                        # 14-08-2020 cambio actualizar para que salgan los indicativos en DVSWITCH:
                        cd /var/lib/mmdvm
                        sudo curl --fail -o DMRIds.dat -s http://www.pistar.uk/downloads/DMRIds.dat
                        sudo chmod 777 -R /var/lib/mmdvm

