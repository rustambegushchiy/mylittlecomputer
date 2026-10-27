#!/bin/bash

#-----------------------#
#--- Poweroff script ---#
#-----------------------#

hyprctl dispatch 'hl.dsp.submap("reset")'
eww close powermenu
hyprshutdown -p poweroff
