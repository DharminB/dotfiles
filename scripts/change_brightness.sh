#!/bin/bash

if [ "$1" = "up" ]; then
    brightnessctl set +1%
    if [ "$2" = "big" ]; then
        brightnessctl set +9%
    fi
else
    brightnessctl set 1%-
    if [ "$2" = "big" ]; then
        brightnessctl set 9%-
    fi
fi

BRIGHTNESS_PERC=$(brightnessctl info | grep -oP 'Current brightness: \d+ \(\K\d+%')
s="Brightness level:" 
notify-send -t 500 "$s" "$BRIGHTNESS_PERC"
