#!/bin/bash

#------------------------------#
#--- Open infoisland script ---#
#------------------------------#

# Resetting the closing timer
pkill -f "$HOME/.config/eww/infoisland/scripts/close.sh"

eww update "infoisland-type=backlight"
if [[ ! $(eww active-windows | grep -o "infoisland:") == "infoisland:" ]]; then
	eww open infoisland
fi
