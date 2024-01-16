#!/bin/bash

# Check if gammastep is running
if pgrep -x "gammastep" > /dev/null; then
    # If gammastep is running, kill it
    dunstify "ON" -i  ~/.config/dunst/icons/idea-bulb-icon.svg -a "Nightlight Mode" -r 91190 -t 1500
    pkill -x gammastep
else
    # If gammastep is not running, start it
    dunstify "OFF" -i ~/.config/dunst/icons/idea-bulb-icon.svg -a "Nightlight Mode" -r 91190 -t 1500
    exec gammastep
fi
