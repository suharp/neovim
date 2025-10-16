-- =============== ToggleTerm Configuration ===============
require("toggleterm").setup({
	-- Terminal size
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,

	-- Open terminal in insert mode - VSCode-style toggle with Ctrl+`
	open_mapping = [[<c-`>]],
	hide_numbers = true,
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	terminal_mappings = true,
	persist_size = true,
	persist_mode = true,
	direction = "horizontal", -- VSCode-style bottom terminal
	close_on_exit = true,
	shell = vim.o.shell,

	-- Float terminal settings (for when you use float direction)
	float_opts = {
		border = "curved", -- 'single' | 'double' | 'shadow' | 'curved'
		width = math.floor(vim.o.columns * 0.8),
		height = math.floor(vim.o.lines * 0.8),
		winblend = 3,
	},
})

-- =============== Keymaps ===============
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Toggle terminal
keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle floating terminal" })
keymap("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle horizontal terminal" })
keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Toggle vertical terminal" })

-- Terminal mode keymaps
function _G.set_terminal_keymaps()
	local term_opts = { buffer = 0 }
	keymap("t", "<esc>", [[<C-\><C-n>]], term_opts)
	keymap("t", "jk", [[<C-\><C-n>]], term_opts)
	keymap("t", "<C-h>", [[<Cmd>wincmd h<CR>]], term_opts)
	keymap("t", "<C-j>", [[<Cmd>wincmd j<CR>]], term_opts)
	keymap("t", "<C-k>", [[<Cmd>wincmd k<CR>]], term_opts)
	keymap("t", "<C-l>", [[<Cmd>wincmd l<CR>]], term_opts)
	keymap("t", "<C-w>", [[<C-\><C-n><C-w>]], term_opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- =============== Terminal Functions ===============
local Terminal = require("toggleterm.terminal").Terminal

-- Lazygit integration
local lazygit = Terminal:new({
	cmd = "lazygit",
	dir = "git_dir",
	direction = "float",
	float_opts = {
		border = "curved",
	},
	on_open = function(term)
		vim.cmd("startinsert!")
		vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
	end,
})

function _LAZYGIT_TOGGLE()
	lazygit:toggle()
end

keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { desc = "Toggle lazygit" })

-- Node REPL
local node = Terminal:new({ cmd = "node", hidden = true })

function _NODE_TOGGLE()
	node:toggle()
end

keymap("n", "<leader>tn", "<cmd>lua _NODE_TOGGLE()<CR>", { desc = "Toggle Node REPL" })

-- Python REPL
local python = Terminal:new({ cmd = "python3", hidden = true })

function _PYTHON_TOGGLE()
	python:toggle()
end

keymap("n", "<leader>tp", "<cmd>lua _PYTHON_TOGGLE()<CR>", { desc = "Toggle Python REPL" })

-- Htop
local htop = Terminal:new({ cmd = "htop", hidden = true })

function _HTOP_TOGGLE()
	htop:toggle()
end

keymap("n", "<leader>tt", "<cmd>lua _HTOP_TOGGLE()<CR>", { desc = "Toggle htop" })
