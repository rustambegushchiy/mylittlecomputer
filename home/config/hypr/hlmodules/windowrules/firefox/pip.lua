------------------------------------
---- Firefox picture in picture ----
------------------------------------

hl.window_rule({
	match = { initial_title = "Picture-in-Picture", },
	size = { "monitor_w * 0.3", "monitor_h * 0.3" },
	border_size = 0,
	keep_aspect_ratio = true,
	float = true,
	pin = true
})
hl.window_rule({
	match = { initial_title = "Картинка в картинке", },
	size = { "monitor_w * 0.3", "monitor_h * 0.3" },
	border_size = 0,
	keep_aspect_ratio = true,
	float = true,
	pin = true
})
