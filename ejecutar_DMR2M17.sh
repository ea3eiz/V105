#!/bin/bash

cd /home/pi/DMR2M17
sudo lxterminal --geometry=75x12 -e ./DMR2M17 DMR2M17.ini & 

cd /home/pi/MMDVMHost
sudo lxterminal --geometry=80x12 -e ./MMDVMDMR2M17 MMDVMDMR2M17.ini

  