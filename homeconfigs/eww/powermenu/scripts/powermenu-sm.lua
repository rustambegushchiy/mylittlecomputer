--------------------------
---- Powermenu submap ----
--------------------------

hl.define_submap("powermenu-sm", function()
	hl.bind("escape", function()
		hl.dispatch(hl.dsp.exec_cmd("eww close powermenu"))
		hl.dispatch(hl.dsp.submap("reset"))
	end)
end)
