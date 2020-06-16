#!/bin/bash
#
###############################################################################
#                                                                             #
#                      Pi-Star Firmware Update Tool                           #
#                                                                             #
#    Version 1.0, Code, Design and Development by Andy Taylor (MW0MWZ).       #
#                                                                             #
#                 Make it simple to update the Firmware                       #
#                                                                             #
###############################################################################
#
if [ "$(id -u)" != "0" ]; then
  echo -e "You need to be root to run this command...\n"
  exit 1
fi
#
# Output some usefull information when no variables are passed
#
if [ -z "$1" ]
then
  echo "This tool is used to flash your ZUMSpot Modem"
  echo "to use the command, you will need to pass the name of your modem,"
  echo "please choose form the list below..."
  echo ""
  echo "To flash a ZUMSpot connected to GPIO, run:         pistar-zumspotflash rpi"
  echo "To flash a ZUMSpot duplex connected to GPIO, run:  pistar-zumspotflash rpi_duplex"
  echo "To flash a ZUMSpot USB Key, run:                  pistar-zumspotflash usb"
  echo "To flash a USB Connected Libre Modem, run:        pistar-zumspotflash libre"
  echo ""
  echo "To flash MMDVM_HS Hat devices by DB9MAT & DF2ET please use pistar-mmdvmhshatflash"
  echo "To flash MMDVM_HS Nano Hat devices please use pistar-nanohsflash"
  echo "To flash your BD7KLE/BG3MDO devices please use pistar-mdoflash"
  exit 0
fi
#
# OK we know what the modem is, let get the firmware string from the log...
#
tac $(ls -1rt /home/pi/MMDVMHost/MMDVM-*.log | tail -n1 ) | grep "protocol" -m 1 | sed -n 's/description: /&\n/;s/.*\n//p'
read -n 1 -s -r -p "Press any key to write the ${1} firmware to this modem or Ctrl-C to quit..."
echo ""
#
# Download the correct firmware
#
if [ "$1" ]
then
  case ${1} in
  rpi)
    # Flashing RPi GPIO Modem
    rm -rf /tmp/zumfirmware 2> /dev/null
    mkdir /tmp/zumfirmware 2> /dev/null
    echo "Flashing your ${1} modem to the latest version"
    curl -s -L https://github.com/juribeparada/MMDVM_HS/releases/latest | egrep -o '/juribeparada/MMDVM_HS/releases/download/v[0-9.]*/install_fw_rpi.sh' | wget --base=http://github.com/ -i - -O /tmp/zumfirmware/flash.sh
    chmod +x /tmp/zumfirmware/flash.sh
    cd  /tmp/zumfirmware
    ./flash.sh
    echo ""
    rm -rf /tmp/zumfirmware 2> /dev/null
    read -n 1 -s -r -p "Flashing your ${1} modem complete, press any key to reboot your System..."
    shutdown -r now
    exit 0
  ;;
  rpi_duplex)
    # Flashing RPi Duplex GPIO Modem
    rm -rf /tmp/zumfirmware 2> /dev/null
    mkdir /tmp/zumfirmware 2> /dev/null
    echo "Flashing your ${1} modem to the latest version"
    curl -s -L https://github.com/juribeparada/MMDVM_HS/releases/latest | egrep -o '/juribeparada/MMDVM_HS/releases/download/v[0-9.]*/install_fw_duplex.sh' | wget --base=http://github.com/ -i - -O /tmp/zumfirmware/flash.sh
    chmod +x /tmp/zumfirmware/flash.sh
    cd  /tmp/zumfirmware
    ./flash.sh
    echo ""
    rm -rf /tmp/zumfirmware 2> /dev/null
    read -n 1 -s -r -p "Flashing your ${1} modem complete, press any key to reboot your System..."
    shutdown -r now
    exit 0
  ;;
  usb)
    # Flashing USB Modem
    rm -rf /tmp/zumfirmware 2> /dev/null
    mkdir /tmp/zumfirmware 2> /dev/null
    echo "Flashing your ${1} modem to the latest version"
    curl -s -L https://github.com/juribeparada/MMDVM_HS/releases/latest | egrep -o '/juribeparada/MMDVM_HS/releases/download/v[0-9.]*/install_fw_usb.sh' | wget --base=http://github.com/ -i - -O /tmp/zumfirmware/flash.sh
    chmod +x /tmp/zumfirmware/flash.sh
    cd  /tmp/zumfirmware
    ./flash.sh
    echo ""
    rm -rf /tmp/zumfirmware 2> /dev/null
    read -n 1 -s -r -p "Flashing your ${1} modem complete, press any key to reboot your System..."
    shutdown -r now
    exit 0
  ;;
  libre)
    # Flashing Libre Kit Modem
    tac $(ls -1rt /home/pi/MMDVMHost/MMDVM-*.log | tail -n1 ) | grep "protocol" -m 1 | sed -n 's/description: /&\n/;s/.*\n//p'
read -n 1 -s -r -p "Press any key to write the ${1} firmware to this modem or Ctrl-C to quit..."
echo ""
    rm -rf /tmp/zumfirmware 2> /dev/null
    mkdir /tmp/zumfirmware 2> /dev/null
    echo "Flashing your ${1} modem to the latest version"
    curl -s -L https://github.com/juribeparada/MMDVM_HS/releases/latest | egrep -o '/juribeparada/MMDVM_HS/releases/download/v[0-9.]*/install_fw_librekit.sh' | wget --base=http://github.com/ -i - -O /tmp/zumfirmware/flash.sh
    chmod +x /tmp/zumfirmware/flash.sh
    cd  /tmp/zumfirmware
    ./flash.sh
    echo ""
    rm -rf /tmp/zumfirmware 2> /dev/null
    read -p "Flashing your ${1} modem complete, press any key to reboot your Pi-Star System..." continuar
 

    #shutdown -r now
    exit 0
  ;;
  *)
    # Un-recognised modem choice
    echo "Your Choice of ${1} modem is not supported by this update tool"
    exit 1
  ;;
  esac
fi
exit 0