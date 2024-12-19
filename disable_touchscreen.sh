#!/bin/sh

# Get the ID of the pointer device named "x"
device_id=$(xinput list | grep -i "Atmel" | awk -F'id=' '{print $2}' | awk '{print $1}')

# Check if the device ID was found
if [ -n "$device_id" ]; then
    # Disable the device using its ID
    xinput disable "$device_id"
    echo "Disabled pointer device with ID: $device_id"
fi

