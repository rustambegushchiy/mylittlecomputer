-----------------------------
---- Include all modules ----
-----------------------------

require("hlmodules/include")

--------------
---- Main ----
--------------

hl.config({
	master = { new_status = "master" },
	scrolling = { fullscreen_on_one_column = true },
	dwindle = { preserve_split = true },
	misc = { force_default_wallpaper = 0, disable_hyprland_logo = true, disable_splash_rendering = true }
})

------------------
---- Monitors ----
------------------

hl.monitor({
    output = "eDP-1",
    mode = "preferred",
    position = "auto",
    scale = "1"
})

-------------------
---- Autostart ----
-------------------

hl.on("hyprland.start", function () 
	hl.exec_cmd("hyprlock &")
	hl.exec_cmd("waybar & hyprpaper & hyprlauncher -d")
	hl.exec_cmd("eww daemon")
	hl.exec_cmd("wl-paste --watch .scripts/wl-paste-script.sh")
end)

-------------------------------
---- Environment variables ----
-------------------------------

hl.env("XCURSOR_SIZE", "18")
hl.env("HYPRCURSOR_SIZE", "18")
hl.env("HYPRSHOT_DIR", "/home/begushchiy/Pictures/Screenshots")

---------------
---- Input ----
---------------

hl.config({
    input = {
        kb_layout = "us, ru",
        kb_variant = "",
        kb_model = "",
        kb_options = "grp:win_space_toggle",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = 0.6,
        touchpad = { disable_while_typing = false, natural_scroll = true }
    },
})
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.device({ name = "epic-mouse-v1", sensitivity = -0.5 })

-------------------------------
---- Standard window rules ----
-------------------------------

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize"
})
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false
    },
    no_focus = true
})
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true
})
