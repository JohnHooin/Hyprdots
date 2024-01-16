#!/bin/bash
current_layout=$(ibus engine | awk -F":" '{ print $2 }')

if [[ "$current_layout" == "us" ]]; then
    ibus engine 'Bamboo'
    layout_name='Tiếng Việt (Telex)'
else
    ibus engine 'xkb:us::eng'
    layout_name='English (US)'
fi

current_layout=$(ibus engine | awk -F":" '{ print $2 }')

# Show notification
dunstify "Switched Keyboard Layout" -i ~/.config/dunst/icons/keyboard.svg -a "$layout_name" -r 91190 -t 1500
# Print some debugging information (optional)
echo "Current Layout: $current_layout"
echo "Active Keymap: $layout_name"

