#!/bin/bash

#-----------------------------#
#--- Coolboard open script ---#
#-----------------------------#

eww open coolboard
$HOME/.config/eww/coolboard/scripts/histgen.sh
eww update "coolboard-h=$(cat $HOME/.config/eww/coolboard/scripts/list.txt)"
hyprctl dispatch 'hl.dsp.submap("coolboard-sm")'
