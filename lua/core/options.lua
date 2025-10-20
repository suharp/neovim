-- =============== Basic Editor Settings =================
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes" -- Always show sign column for git signs

-- =============== Code Folding =================
vim.opt.foldmethod = "expr" -- Use treesitter for folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- Don't fold by default when opening files
vim.opt.foldlevel = 99 -- High fold level so most folds are open by default
