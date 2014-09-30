#!/bin/bash
date
now=$(date +"%Y%m%d")
echo "START: Get Image"
#fswebcam -d /dev/video0 -r 640x480 --set "backlight compensation"=1 -D 1 -S 30 --jpeg 95 /home/pi/webcam/webcam.jpg
fswebcam -d /dev/video0 -r 640x480 --set "backlight compensation"=1 -D 1 -S 30 --jpeg 95 /home/pi/webcam/${now}_bassano_swim.jpg --title 'Bassano' --subtitle 'piscina'
echo "Send email"
mpack -s "Greetings From Bassano" /home/pi/webcam/${now}_bassano_swim.jpg maui.deg@gmail.com,irinimini@gmail.com
echo "COMPLETED"
