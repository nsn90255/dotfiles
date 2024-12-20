#!/bin/sh
slstatus -s | dbus-run-session dwl &
sleep 1
swaybg -i Pictures/wallpaper.jpg
