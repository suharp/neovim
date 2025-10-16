-- =============== Which-Key Configuration ===============
-- Shows available keybindings in a popup

local wk = require("which-key")

wk.setup({
	preset = "modern",
	icons = {
		mappings = true,
	},
	win = {
		border = "rounded",
	},
})

-- Register key groups with descriptions
wk.add({
	{ "<leader>c", group = "Claude Code" },
	{ "<leader>d", group = "Diagnostics" },
	{ "<leader>g", group = "Git" },
	{ "<leader>x", group = "Trouble/Problems" },
	{ "<leader>w", group = "Workspace" },
	{ "g", group = "Go to" },
	{ "[", group = "Previous" },
	{ "]", group = "Next" },
	{ "<C-s>", desc = "Save file" },
	{ "<C-q>", desc = "Quit" },
	{ "<C-w>", desc = "Close buffer" },
	{ "<C-a>", desc = "Select all" },
	{ "<C-z>", desc = "Undo" },
	{ "<C-y>", desc = "Redo" },
	{ "<C-c>", desc = "Copy to clipboard" },
	{ "<C-v>", desc = "Paste from clipboard" },
	{ "<C-x>", desc = "Cut to clipboard" },
	{ "<C-/>", desc = "Toggle comment" },
	{ "<C-S-k>", desc = "Delete line" },
	{ "<C-b>", desc = "Toggle sidebar" },
	{ "<C-p>", desc = "Quick open file" },
	{ "<C-S-f>", desc = "Search in files" },
	{ "<C-f>", desc = "Find in file" },
	{ "<C-S-p>", desc = "Command palette" },
	{ "<C-r>", desc = "Recent files" },
	{ "<C-Tab>", desc = "Switch buffer" },
	{ "<C-S-o>", desc = "Toggle outline / Go to symbol" },
	{ "<C-t>", desc = "Go to symbol in workspace" },
	{ "<C-F12>", desc = "Go to implementation" },
	{ "<C-S-Space>", desc = "Trigger parameter hints" },
	{ "<C-.>", desc = "Quick fix / Code action" },
	{ "<C-S-m>", desc = "Show problems panel" },
	{ "<C-`>", desc = "Toggle terminal" },
	{ "<C-\\>", desc = "Split editor right" },
	{ "<C-h>", desc = "Focus left split" },
	{ "<C-j>", desc = "Focus down split" },
	{ "<C-k>", desc = "Focus up split" },
	{ "<C-l>", desc = "Focus right split" },
	{ "<C-Left>", desc = "Window left" },
	{ "<C-Down>", desc = "Window down" },
	{ "<C-Up>", desc = "Window up" },
	{ "<C-Right>", desc = "Window right" },
	{ "<C-S-Left>", desc = "Decrease width" },
	{ "<C-S-Right>", desc = "Increase width" },
	{ "<C-S-Up>", desc = "Decrease height" },
	{ "<C-S-Down>", desc = "Increase height" },
})
