#/usr/bin/bash

status=$(playerctl -p spotify status 2> /dev/null)

if [[ $status = "Playing" ]]; then
	echo -n "%{F#65737E}"
elif [[ $status = "Paused" ]]; then
	echo -n "%{F#000}"
fi
