--------------------------------
---- Infoisland keybindings ----
--------------------------------

local mainMod = "SUPER"
hl.bind(mainMod .. " + F2", hl.dsp.exec_cmd("~/.config/eww/infoisland/scripts/sound.sh"))
hl.bind(mainMod .. " + F2", hl.dsp.exec_cmd("~/.config/eww/infoisland/scripts/close.sh"), { release = true })
hl.bind(mainMod .. " + F3", hl.dsp.exec_cmd("~/.config/eww/infoisland/scripts/sound.sh"))
hl.bind(mainMod .. " + F3", hl.dsp.exec_cmd("~/.config/eww/infoisland/scripts/close.sh"), { release = true })
hl.bind(mainMod .. " + F5", hl.dsp.exec_cmd("~/.config/eww/infoisland/scripts/backlight.sh"), { repeating = false } )
hl.bind(mainMod .. " + F5", hl.dsp.exec_cmd("~/.config/eww/infoisland/scripts/close.sh"), { repeating = false, release = true })
hl.bind(mainMod .. " + F6", hl.dsp.exec_cmd("~/.config/eww/infoisland/scripts/backlight.sh"), { repeating = false } )
hl.bind(mainMod .. " + F6", hl.dsp.exec_cmd("~/.config/eww/infoisland/scripts/close.sh"), { repeating = false, release = true })
