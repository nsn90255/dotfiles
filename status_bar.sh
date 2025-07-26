DATE_TIME="$(date +'%Y-%m-%dT%H:%M')"
BATTERY="B $(cat /sys/class/power_supply/BAT1/capacity)%"

echo ${BATTERY} - ${DATE_TIME}
