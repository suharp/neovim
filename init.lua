-- ===============================================
-- Neovim Configuration - Main Entry Point
-- ===============================================
-- Author: suhartyo
-- Description: Modular Neovim config with LSP, Treesitter, and more
-- ===============================================

-- Load core settings
require("core.options")

-- Load plugins (lazy.nvim)
require("plugins")

-- Load theme
require("theme")

-- Load plugin configurations
require("plugins.configs.lsp")
require("plugins.configs.lspsaga")
require("plugins.configs.glance")
require("plugins.configs.completion")
require("plugins.configs.treesitter")
require("plugins.configs.telescope")
require("plugins.configs.nvim-tree")
require("plugins.configs.lualine")
require("plugins.configs.trouble")
require("plugins.configs.gitsigns")
require("plugins.configs.which-key")

-- Load keymaps (must be last to ensure all plugins are loaded)
require("core.keymaps")
