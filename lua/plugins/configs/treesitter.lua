-- =============== Treesitter Setup ===============
require("nvim-treesitter.configs").setup({
	ensure_installed = { "go", "lua", "bash", "json", "yaml" },
	highlight = { enable = true },
	indent = { enable = true },
})
