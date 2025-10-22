-- =============== Glow.nvim Configuration ===============
require("glow").setup({
	-- Glow binary path (will be auto-installed if not found)
	glow_path = vim.fn.exepath("glow"),

	-- Install glow automatically if not found
	install_path = "~/.local/bin",

	-- Border style
	border = "rounded", -- "single" | "double" | "rounded" | "solid" | "shadow"

	-- Style (uses glow CLI styles)
	style = "dark", -- "dark" | "light"

	-- Pager (less, more, etc.)
	pager = false,

	-- Width (percentage or exact value)
	width = 120,
	height = 100,
	width_ratio = 0.8, -- Max width as percentage of window
	height_ratio = 0.8, -- Max height as percentage of window
})

-- =============== Keymaps ===============
local keymap = vim.keymap.set

-- Preview markdown
keymap("n", "<leader>mp", ":Glow<CR>", { desc = "Preview markdown" })
keymap("n", "<leader>md", ":Glow<CR>", { desc = "Preview markdown (Glow)" })
