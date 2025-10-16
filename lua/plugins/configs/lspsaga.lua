-- =============== LSPSaga Configuration ===============
-- Provides better LSP UI for code actions, hover, rename, etc.

require("lspsaga").setup({
	ui = {
		border = "rounded",
		code_action = "",
	},
	lightbulb = {
		enable = false, -- Disable lightbulb (use virtual text instead)
		sign = false,
	},
	symbol_in_winbar = {
		enable = true,
	},
	outline = {
		win_width = 30,
		auto_preview = false,
	},
})
