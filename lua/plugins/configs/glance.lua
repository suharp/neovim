-- =============== Glance Configuration ===============
-- Preview definitions, references, implementations, and type definitions

require("glance").setup({
	height = 18,
	zindex = 45,
	preview_win_opts = {
		cursorline = true,
		number = true,
		wrap = true,
	},
	border = {
		enable = true,
		top_char = "―",
		bottom_char = "―",
	},
	list = {
		position = "right",
		width = 0.33,
	},
	theme = {
		enable = true,
		mode = "auto",
	},
	mappings = {
		list = {
			["<C-u>"] = "preview_scroll_win 5",
			["<C-d>"] = "preview_scroll_win -5",
			["v"] = "jump_vsplit",
			["s"] = "jump_split",
			["t"] = "jump_tab",
		},
	},
	hooks = {},
	folds = {
		fold_closed = "",
		fold_open = "",
		folded = true,
	},
})
