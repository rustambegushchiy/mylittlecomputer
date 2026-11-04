--------------------------
---- Coolboard submap ----
--------------------------

hl.define_submap("coolboard-sm", function()
	hl.bind("escape", function()
		hl.dispatch(hl.dsp.exec_cmd("eww close coolboard"))
		hl.dispatch(hl.dsp.submap("reset"))
	end)
end)
