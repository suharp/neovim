-- =============== Keymaps (VSCode-like) ===============

-- =========== General Editor ===========
-- Save file
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Save file" })

-- Quit
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit" })

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Undo/Redo
vim.keymap.set("n", "<C-z>", "u", { desc = "Undo" })
vim.keymap.set("n", "<C-y>", "<C-r>", { desc = "Redo" })

-- Copy/Paste (system clipboard)
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set({ "n", "v" }, "<C-v>", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard" })

-- Cut
vim.keymap.set("v", "<C-x>", '"+d', { desc = "Cut to clipboard" })

-- Move lines up/down
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Duplicate line
vim.keymap.set("n", "<S-A-Down>", ":t.<CR>", { desc = "Duplicate line down" })
vim.keymap.set("n", "<S-A-Up>", ":t.-1<CR>", { desc = "Duplicate line up" })

-- Delete line
vim.keymap.set("n", "<C-S-k>", "dd", { desc = "Delete line" })

-- Comment line (requires plugin)
vim.keymap.set("n", "<C-/>", "gcc", { desc = "Toggle comment", remap = true })
vim.keymap.set("v", "<C-/>", "gc", { desc = "Toggle comment", remap = true })

-- Indent/Outdent
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Outdent" })

-- =========== File Explorer ===========
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Toggle sidebar" })
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Focus file explorer" })

-- =========== Quick Open / Search ===========
-- Quick open file
vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files, { desc = "Quick open file" })

-- Search in files
vim.keymap.set("n", "<C-S-f>", require("telescope.builtin").live_grep, { desc = "Search in files" })

-- Find in current file
vim.keymap.set("n", "<C-f>", "/", { desc = "Find in file" })

-- Command palette
vim.keymap.set("n", "<C-S-p>", require("telescope.builtin").commands, { desc = "Command palette" })

-- Recent files
vim.keymap.set("n", "<C-r>", require("telescope.builtin").oldfiles, { desc = "Recent files" })

-- Buffers (open files)
vim.keymap.set("n", "<C-Tab>", require("telescope.builtin").buffers, { desc = "Switch buffer" })

-- Symbol search
vim.keymap.set("n", "<C-S-o>", require("telescope.builtin").lsp_document_symbols, { desc = "Go to symbol" })

-- Workspace symbol search
vim.keymap.set("n", "<C-t>", require("telescope.builtin").lsp_workspace_symbols, { desc = "Go to symbol in workspace" })

-- =========== LSP Features ===========
-- Go to definition
vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

-- Peek definition
vim.keymap.set("n", "<A-F12>", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek definition" })

-- Go to type definition
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })

-- Find all references
vim.keymap.set("n", "<S-F12>", "<cmd>Glance references<CR>", { desc = "Find all references" })
vim.keymap.set("n", "gr", "<cmd>Glance references<CR>", { desc = "Find references" })

-- Go to implementation
vim.keymap.set("n", "<C-F12>", "<cmd>Glance implementations<CR>", { desc = "Go to implementation" })
vim.keymap.set("n", "gi", "<cmd>Glance implementations<CR>", { desc = "Go to implementation" })

-- Hover documentation
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Show hover" })

-- Signature help
vim.keymap.set("n", "<C-S-Space>", vim.lsp.buf.signature_help, { desc = "Trigger parameter hints" })
vim.keymap.set("i", "<C-S-Space>", vim.lsp.buf.signature_help, { desc = "Trigger parameter hints" })

-- Rename symbol
vim.keymap.set("n", "<F2>", "<cmd>Lspsaga rename<CR>", { desc = "Rename symbol" })

-- Format document
vim.keymap.set("n", "<S-A-f>", function()
	vim.lsp.buf.format({ async = false })
end, { desc = "Format document" })

-- Code action
vim.keymap.set({ "n", "v" }, "<C-.>", "<cmd>Lspsaga code_action<CR>", { desc = "Quick fix" })

-- Show problems (diagnostics)
vim.keymap.set("n", "<C-S-m>", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Show problems" })

-- Next/Previous problem
vim.keymap.set("n", "<F8>", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next problem" })
vim.keymap.set("n", "<S-F8>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Previous problem" })

-- Show error/warning
vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", { desc = "Show line diagnostics" })

-- =========== Panel Management ===========
-- Toggle terminal
vim.keymap.set("n", "<C-`>", ":terminal<CR>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<C-`>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Close editor
vim.keymap.set("n", "<C-w>", ":bd<CR>", { desc = "Close editor" })

-- Split editor
vim.keymap.set("n", "<C-\\>", ":vsplit<CR>", { desc = "Split editor right" })

-- Navigate between splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right" })

-- =========== Git (Source Control) ===========
vim.keymap.set("n", "<leader>gg", ":Git<CR>", { desc = "Source control" })
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", { desc = "Git blame" })
vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview changes" })
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Revert changes" })
vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Stage changes" })
vim.keymap.set("n", "[c", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Previous change" })
vim.keymap.set("n", "]c", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next change" })

-- Git diff commands
vim.keymap.set("n", "<leader>gD", ":Gvdiffsplit<CR>", { desc = "Diff current file (split)" })
vim.keymap.set("n", "<leader>gf", ":Git diff<CR>", { desc = "Diff all files" })
vim.keymap.set("n", "<leader>gh", ":Git diff HEAD<CR>", { desc = "Diff vs HEAD" })
vim.keymap.set("n", "<leader>gc", ":Git diff --cached<CR>", { desc = "Diff staged changes" })
vim.keymap.set("n", "<leader>gl", ":Git log --oneline<CR>", { desc = "Git log" })

-- =========== Outline / Symbols ===========
vim.keymap.set("n", "<C-S-o>", "<cmd>Lspsaga outline<CR>", { desc = "Toggle outline" })

-- =========== Claude Code ===========
vim.keymap.set("n", "<leader>cc", ":ClaudeTerminal<CR>", { desc = "Open Claude Code Chat" })
vim.keymap.set("n", "<leader>cr", ":ClaudeReview<CR>", { desc = "Review Claude Changes" })

-- =========== Zen Mode / Focus ===========
vim.keymap.set("n", "<C-k>z", ":ZenMode<CR>", { desc = "Toggle zen mode" })

-- =========== Additional Useful Shortcuts ===========
-- Clear search highlight
vim.keymap.set("n", "<Esc>", ":noh<CR>", { desc = "Clear search highlight" })

-- Better window navigation
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Window right" })

-- Resize windows
vim.keymap.set("n", "<C-S-Left>", ":vertical resize -2<CR>", { desc = "Decrease width" })
vim.keymap.set("n", "<C-S-Right>", ":vertical resize +2<CR>", { desc = "Increase width" })
vim.keymap.set("n", "<C-S-Up>", ":resize -2<CR>", { desc = "Decrease height" })
vim.keymap.set("n", "<C-S-Down>", ":resize +2<CR>", { desc = "Increase height" })
