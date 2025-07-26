#!/bin/sh
DATE_TIME="$(date +'%Y-%m-%dT%H:%M')"
BATTERY="B $(cat /sys/class/power_supply/BAT1/capacity)%"
LUMINOSITY="L $(brightnessctl | awk '/Current brightness/ {print $4}' | sed 's/(//;s/)//')"

echo $LUMINOSITY - ${BATTERY} - ${DATE_TIME}
