---------------------------
---- Firefox bitwarden ----
---------------------------

hl.on("window.title", function(w)
	if w ~= nil then
		if w.class == "firefox" 
			and w.title == "Extension: (Bitwarden Password Manager) - Bitwarden — Mozilla Firefox"
			or w.title == "Расширение: (Bitwarden - Менеджер паролей) - Bitwarden — Mozilla Firefox" then
			hl.dispatch(hl.dsp.window.float({ action = "set" }))
			hl.dispatch(hl.dsp.window.resize({ x = 400, y = 600 }))
		end
	end
end)
