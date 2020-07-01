#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

                        echo "\v\v\v\v\v\v\v\v\v\v\v"
                        echo "${VERDE}"
                        echo "****************************************************************************"
                        echo "                                                            "
                        echo "                      ACTUALIZANDO                          "
                        echo -n "${AMARILLO}"
                        echo "        YSF, YSF2DMR, DMR2YSF, DMR2NXDN y NXDNClients       "
                        echo -n "${VERDE}"
                        echo "                                                            "
                        echo "************************************************************"
                        sleep 15

                        echo "${BLANCO}"
                        echo "************************************************************"
                        echo "                                                            "
                        echo "               YA TIENES LAS ÚLTIMAS VERSIONES              "
                        echo -n "${VERDE}"
                        echo "        YSF, YSF2DMR, DMR2YSF, DMR2NXDN y NXDNClients       "
                        echo -n "${BLANCO}"
                        echo "                                                            "
                        echo "************************************************************"
                        sleep 5

                 
                        
