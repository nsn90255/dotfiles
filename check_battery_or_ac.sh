#!/bin/bash

while true; do
	POWER_STATUS=$(acpi -a | grep -i "on-line" || echo "battery")

	if [[ $POWER_STATUS == *"on-line"* ]]; then
	    cpupower frequency-set -g performance
	    brightnessctl set 100%
	else
	    cpupower frequency-set -g powersave
	    brightnessctl set 50%
	fi
sleep 1
done
