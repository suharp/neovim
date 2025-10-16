-- =============== Plugin Manager: Lazy.nvim ===============
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- =============== Plugin List ===============
require("lazy").setup({
	-- Mason (LSP / Formatter Installer) - Load first
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "b0o/schemastore.nvim" }, -- JSON/YAML schemas

	-- LSP Enhancements
	{
		"nvimdev/lspsaga.nvim",
		event = "LspAttach",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"DNLHC/glance.nvim", -- Preview definitions, references, implementations
		event = "LspAttach",
	},
	{
		"j-hui/fidget.nvim", -- LSP progress notifications
		opts = {},
	},

	-- Completion
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" }, -- LSP source
	{ "hrsh7th/cmp-buffer" }, -- Buffer source
	{ "hrsh7th/cmp-path" }, -- Path source
	{ "hrsh7th/cmp-cmdline" }, -- Command line source

	-- Snippets
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
	},
	{ "saadparwaiz1/cmp_luasnip" }, -- LuaSnip completion source
	{ "rafamadriz/friendly-snippets" }, -- Snippet collection

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" }, -- Enhanced text objects

	-- File Explorer
	{ "nvim-tree/nvim-tree.lua" },
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- Telescope & optional fzf native (faster)
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		cond = vim.fn.executable("make") == 1,
	},

	-- Theme
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000 },

	-- Status Line
	{ "nvim-lualine/lualine.nvim" },

	-- Diagnostics
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Git
	{ "tpope/vim-fugitive" },
	{ "lewis6991/gitsigns.nvim" }, -- Git decorations

	-- Code Actions
	{
		"aznhe21/actions-preview.nvim",
		event = "LspAttach",
	},

	-- Auto pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},

	-- Comments
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},

	-- Which Key (Keymap Helper)
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "modern",
		},
	},

	-- Claude Code Integration
	{
		"avifenesh/claucode.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
		config = function()
			require("claucode").setup()
		end,
	},

	-- Terminal
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("plugins.configs.toggleterm")
		end,
	},
})
