#!/bin/bash
sudo cp /home/pi/V105/Desktop/*.* /home/pi/Desktop
sudo chmod 777 -R /home/pi/Desktop

cp /home/pi/V105/skin1_icons.screen0-1904x1023.rc /home/pi/.config/xfce4/desktop/icons.screen0-1904x1023.rc
cp /home/pi/V105/skin1_icons.screen0-1904x1023.rc /home/pi/icons.screen0-1904x1023.rc

cp /home/pi/V105/SKIN1_FONDO_ADER_V105.jpg FONDO_ADER_V105.jpg

xfdesktop --reload


                                