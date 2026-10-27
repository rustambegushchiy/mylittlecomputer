#!/bin/bash

#-------------------------------#
#--- Powermenu reboot script ---#
#-------------------------------#

hyprctl dispatch 'hl.dsp.submap("reset")'
eww close powermenu
hyprshutdown -p reboot
