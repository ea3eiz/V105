#!/bin/bash
sudo cp /home/pi/V105/Desktop/*.* /home/pi/Desktop
sudo chmod 777 -R /home/pi/Desktop

cp /home/pi/V105/skin2_icons.screen0-1904x1023.rc /home/pi/.config/xfce4/desktop/icons.screen0-1904x1023.rc
xfdesktop --reload


                                