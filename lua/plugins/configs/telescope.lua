-- =============== Telescope Configuration ===============
local has_fd = vim.fn.executable("fd") == 1 or vim.fn.executable("fdfind") == 1
local fd_cmd = has_fd and (vim.fn.executable("fd") == 1 and "fd" or "fdfind") or nil

require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules", ".git/" },
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		dynamic_preview_title = true,
		find_command = fd_cmd and { fd_cmd, "--type", "f", "--hidden", "--follow", "--exclude", ".git" } or nil,
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})
