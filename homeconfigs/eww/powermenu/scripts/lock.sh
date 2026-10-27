#!/bin/bash

#-----------------------------#
#--- Powermenu lock script ---#
#-----------------------------#

hyprctl dispatch 'hl.dsp.submap("reset")'
eww close powermenu
hyprlock
