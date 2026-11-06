---------------
---- Style ----
---------------

local mainColor = "#f7630c"
local mainColorShade = "#5c1300"

-- Background
vim.api.nvim_set_hl(0, "Normal", { bg = none })

-- Status Line
vim.api.nvim_set_hl(0, "StatusLine", { bg = mainColor })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = mainColorShade })

-- Window border
vim.api.nvim_set_hl(0, "FloatBorder", { fg = mainColor, bg = mainColor })

-- Options color
vim.api.nvim_set_hl(0, "CursorLine", { bg = mainColor })

-- Tab color
vim.api.nvim_set_hl(0, "TabLineSel", { bg = mainColor })
