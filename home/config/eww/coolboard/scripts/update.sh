#!/bin/bash

#-------------------------------#
#--- Coolboard update script ---#
#-------------------------------#

$HOME/.config/eww/coolboard/scripts/histgen.sh
eww update "coolboard-h=$(cat $HOME/.config/eww/coolboard/scripts/list.txt)"
