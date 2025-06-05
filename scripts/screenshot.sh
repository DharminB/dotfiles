#!/bin/bash
if [ "$1" = "crop" ]
then
    scrot -s ~/Pictures/Screenshots/Screenshot_from_%F_%H-%M-%S_cropped.png
else
    scrot ~/Pictures/Screenshots/Screenshot_from_%F_%H-%M-%S.png
fi

notify-send -t 2000 "Screenshot taken" -h string:x-canonical-private-synchronous:anything
