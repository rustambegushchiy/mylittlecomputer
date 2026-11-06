--------------------
---- Lsp config ----
--------------------

return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			-- C, and C++ lsp settings
			vim.lsp.config["clangd"] = {
				cmd = { "clangd" },
				filetype = { "c", "h", "cpp", "hpp" }
			}
			-- Enable lsp
			vim.lsp.enable("clangd")
		end
	}
}
