#!/bin/bash
sudo pkill svxlink
echo 1 > /sys/class/gpio/gpio16/value

AUDIODEV=hw:1 play /home/SVXCARD/arretrelais.wav

sleep 3
echo 0 > /sys/class/gpio/gpio16/value
