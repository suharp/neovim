# Neovim Configuration

A modern, VSCode-like Neovim configuration with LSP, autocompletion, Git integration, and terminal management.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Post-Installation Setup](#post-installation-setup)
- [Keybindings](#keybindings)
- [Plugin List](#plugin-list)
- [Troubleshooting](#troubleshooting)

## Features

- **LSP Support** - Full Language Server Protocol integration with Mason
- **Autocompletion** - Intelligent code completion with nvim-cmp
- **Git Integration** - Gitsigns for inline git status and vim-fugitive for git commands
- **File Explorer** - Nvim-tree for project navigation
- **Fuzzy Finder** - Telescope for quick file/text search
- **Terminal** - ToggleTerm for integrated terminal (VSCode-style)
- **Syntax Highlighting** - Treesitter for better syntax highlighting
- **Code Actions** - LSPSaga for enhanced LSP features
- **Diagnostics** - Trouble for better error/warning display
- **VSCode-like Keybindings** - Familiar shortcuts for easy transition

## Prerequisites

### Required

1. **Neovim >= 0.9.0**
   ```bash
   # macOS
   brew install neovim

   # Ubuntu/Debian
   sudo add-apt-repository ppa:neovim-ppa/unstable
   sudo apt update
   sudo apt install neovim

   # Arch Linux
   sudo pacman -S neovim
   ```

2. **Git**
   ```bash
   # macOS
   brew install git

   # Ubuntu/Debian
   sudo apt install git

   # Arch Linux
   sudo pacman -S git
   ```

3. **Node.js >= 18.x** (for LSP servers)
   ```bash
   # macOS
   brew install node

   # Ubuntu/Debian
   curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
   sudo apt install nodejs

   # Arch Linux
   sudo pacman -S nodejs npm
   ```

4. **A Nerd Font** (for icons)
   ```bash
   # macOS
   brew tap homebrew/cask-fonts
   brew install font-hack-nerd-font

   # Then set your terminal to use "Hack Nerd Font"
   ```
   Or download from: https://www.nerdfonts.com/

### Recommended

5. **ripgrep** (for Telescope live_grep)
   ```bash
   # macOS
   brew install ripgrep

   # Ubuntu/Debian
   sudo apt install ripgrep

   # Arch Linux
   sudo pacman -S ripgrep
   ```

6. **fd** (for Telescope file finding)
   ```bash
   # macOS
   brew install fd

   # Ubuntu/Debian
   sudo apt install fd-find

   # Arch Linux
   sudo pacman -S fd
   ```

7. **Lazygit** (optional, for git UI)
   ```bash
   # macOS
   brew install lazygit

   # Ubuntu/Debian
   sudo add-apt-repository ppa:lazygit-team/release
   sudo apt update
   sudo apt install lazygit

   # Arch Linux
   sudo pacman -S lazygit
   ```

8. **Build Tools** (for Treesitter and native extensions)
   ```bash
   # macOS
   xcode-select --install

   # Ubuntu/Debian
   sudo apt install build-essential

   # Arch Linux
   sudo pacman -S base-devel
   ```

## Installation

1. **Backup existing Neovim configuration** (if you have one)
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   mv ~/.local/share/nvim ~/.local/share/nvim.backup
   mv ~/.local/state/nvim ~/.local/state/nvim.backup
   mv ~/.cache/nvim ~/.cache/nvim.backup
   ```

2. **Clone this configuration**
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   # Or if you're setting this up fresh, the files should already be in ~/.config/nvim
   ```

3. **Launch Neovim**
   ```bash
   nvim
   ```

   On first launch, lazy.nvim will automatically:
   - Install itself
   - Download and install all plugins
   - This may take 1-3 minutes

4. **Wait for plugins to install**
   - You'll see a window showing plugin installation progress
   - Press `q` to close the window when done

5. **Restart Neovim**
   ```bash
   # Close nvim
   :qa

   # Reopen
   nvim
   ```

## Post-Installation Setup

### Install Language Servers

1. Open Neovim and run:
   ```vim
   :Mason
   ```

2. Install language servers for your languages:
   - Press `i` to install
   - Use `/` to search
   - Common servers:
     - `lua_ls` - Lua
     - `ts_ls` - TypeScript/JavaScript
     - `gopls` - Go
     - `pyright` - Python
     - `rust_analyzer` - Rust
     - `html` - HTML
     - `cssls` - CSS
     - `jsonls` - JSON

3. Install formatters (optional):
   - `prettier` - JavaScript/TypeScript/JSON/etc
   - `stylua` - Lua
   - `black` - Python
   - `gofmt` - Go

### Install Treesitter Parsers

Open Neovim and run:
```vim
:TSInstall lua javascript typescript python go rust html css json
```

Or install as needed when you open files in those languages.

### Configure Git

Make sure your git is configured:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## Keybindings

### General

| Keymap | Mode | Action |
|--------|------|--------|
| `<Space>` | Normal | Leader key |
| `<C-s>` | Normal/Insert | Save file |
| `<C-q>` | Normal | Quit |
| `<C-z>` | Normal | Undo |
| `<C-y>` | Normal | Redo |
| `<C-a>` | Normal | Select all |
| `<C-c>` | Normal/Visual | Copy to clipboard |
| `<C-v>` | Normal/Visual/Insert | Paste from clipboard |
| `<C-x>` | Visual | Cut to clipboard |
| `<Esc>` | Normal | Clear search highlight |

### File Navigation

| Keymap | Mode | Action |
|--------|------|--------|
| `<C-b>` | Normal | Toggle file explorer (sidebar) |
| `<C-p>` | Normal | Quick open file |
| `<C-S-f>` | Normal | Search in files (live grep) |
| `<C-f>` | Normal | Find in current file |
| `<C-r>` | Normal | Recent files |
| `<C-Tab>` | Normal | Switch buffer |
| `<C-w>` | Normal | Close current buffer |

### LSP Features

| Keymap | Mode | Action |
|--------|------|--------|
| `gd` or `<F12>` | Normal | Go to definition |
| `<A-F12>` | Normal | Peek definition |
| `gr` or `<S-F12>` | Normal | Find references |
| `gi` or `<C-F12>` | Normal | Go to implementation |
| `gt` | Normal | Go to type definition |
| `K` | Normal | Show hover documentation |
| `<F2>` | Normal | Rename symbol |
| `<C-.>` | Normal/Visual | Code action |
| `<S-A-f>` | Normal | Format document |
| `<F8>` | Normal | Next diagnostic |
| `<S-F8>` | Normal | Previous diagnostic |
| `<C-S-m>` | Normal | Show all problems |
| `<C-S-o>` | Normal | Toggle outline |

### Git

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>gg` | Normal | Open git status (fugitive) |
| `<leader>gb` | Normal | Git blame line |
| `<leader>gd` | Normal | Preview git hunk (popup) |
| `<leader>gD` | Normal | Diff current file (split) |
| `<leader>gf` | Normal | Diff all files |
| `<leader>gh` | Normal | Diff vs HEAD |
| `<leader>gc` | Normal | Diff staged changes |
| `<leader>gl` | Normal | Git log |
| `<leader>gs` | Normal | Stage hunk |
| `<leader>gr` | Normal | Reset hunk |
| `]c` | Normal | Next git hunk |
| `[c` | Normal | Previous git hunk |
| `<leader>tb` | Normal | Toggle inline git blame |

### Terminal

| Keymap | Mode | Action |
|--------|------|--------|
| `<C-\`>` | Normal/Insert | Toggle terminal (VSCode-style) |
| `<leader>tf` | Normal | Float terminal |
| `<leader>th` | Normal | Horizontal terminal |
| `<leader>tv` | Normal | Vertical terminal |
| `<leader>gg` | Normal | Toggle lazygit |
| `<Esc>` or `jk` | Terminal | Exit terminal mode |
| `<C-h/j/k/l>` | Terminal | Navigate windows |

### Window Management

| Keymap | Mode | Action |
|--------|------|--------|
| `<C-\>` | Normal | Split editor vertically |
| `<C-h/j/k/l>` | Normal | Navigate between splits |
| `<C-Left/Down/Up/Right>` | Normal | Navigate between splits |
| `<C-S-Left/Right>` | Normal | Resize width |
| `<C-S-Up/Down>` | Normal | Resize height |

### Editing

| Keymap | Mode | Action |
|--------|------|--------|
| `<A-Up/Down>` | Normal | Move line up/down |
| `<A-Up/Down>` | Visual | Move selection up/down |
| `<S-A-Down/Up>` | Normal | Duplicate line |
| `<C-S-k>` | Normal | Delete line |
| `<C-/>` | Normal/Visual | Toggle comment |
| `<Tab>` | Visual | Indent |
| `<S-Tab>` | Visual | Outdent |

## Plugin List

### Core Plugins

- **lazy.nvim** - Plugin manager
- **mason.nvim** - LSP/formatter installer
- **nvim-lspconfig** - LSP configuration
- **nvim-cmp** - Autocompletion
- **LuaSnip** - Snippet engine
- **nvim-treesitter** - Syntax highlighting

### UI Plugins

- **tokyonight.nvim** - Color scheme
- **lualine.nvim** - Status line
- **nvim-tree.lua** - File explorer
- **telescope.nvim** - Fuzzy finder
- **which-key.nvim** - Keymap helper
- **nvim-web-devicons** - File icons

### LSP Enhancement

- **lspsaga.nvim** - Enhanced LSP UI
- **glance.nvim** - Preview definitions/references
- **fidget.nvim** - LSP progress notifications
- **trouble.nvim** - Better diagnostics list

### Git Integration

- **gitsigns.nvim** - Git decorations in sign column
- **vim-fugitive** - Git commands

### Editing Enhancement

- **nvim-autopairs** - Auto close brackets
- **Comment.nvim** - Easy commenting
- **actions-preview.nvim** - Code action preview

### Terminal

- **toggleterm.nvim** - Terminal management

### Other

- **claucode.nvim** - Claude Code integration

## Configuration Structure

```
~/.config/nvim/
├── init.lua                          # Entry point
├── lua/
│   ├── core/
│   │   ├── options.lua              # Vim options
│   │   └── keymaps.lua              # Keybindings
│   └── plugins/
│       ├── init.lua                 # Plugin list
│       └── configs/
│           ├── lsp.lua              # LSP configuration
│           ├── completion.lua       # Completion setup
│           ├── treesitter.lua       # Treesitter config
│           ├── telescope.lua        # Telescope setup
│           ├── nvim-tree.lua        # File explorer config
│           ├── lualine.lua          # Status line config
│           ├── gitsigns.lua         # Git signs config
│           ├── toggleterm.lua       # Terminal config
│           ├── lspsaga.lua          # LSPSaga config
│           ├── glance.lua           # Glance config
│           ├── trouble.lua          # Trouble config
│           └── which-key.lua        # Which-key config
└── README.md                        # This file
```

## Troubleshooting

### Plugins not loading

```vim
:Lazy sync
```

### LSP not working

1. Check if language server is installed:
   ```vim
   :Mason
   ```

2. Check LSP status:
   ```vim
   :LspInfo
   ```

3. Restart LSP:
   ```vim
   :LspRestart
   ```

### Icons not showing

Make sure you have a Nerd Font installed and your terminal is configured to use it.

### Treesitter errors

Update parsers:
```vim
:TSUpdate
```

### Telescope not finding files

Make sure `ripgrep` and `fd` are installed (see Prerequisites).

### Git signs not appearing

1. Make sure you're in a git repository
2. Check if signcolumn is enabled:
   ```vim
   :set signcolumn=yes
   ```

### Terminal toggle not working

Make sure toggleterm is installed:
```vim
:Lazy sync toggleterm.nvim
```

### Format on save not working

1. Check if formatter is installed via Mason
2. Check LSP is attached:
   ```vim
   :LspInfo
   ```

### Clear everything and reinstall

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Then reinstall following Installation steps
```

## Updating

### Update all plugins

```vim
:Lazy sync
```

### Update specific plugin

```vim
:Lazy update <plugin-name>
```

### Update language servers

```vim
:Mason
# Then press U to update all
```

## Customization

### Change theme

Edit `lua/plugins/init.lua` and replace `tokyonight.nvim` with your preferred theme.

### Add more language servers

1. Open Mason:
   ```vim
   :Mason
   ```

2. Find and install your language server

3. The configuration will automatically attach to the LSP

### Modify keybindings

Edit `lua/core/keymaps.lua` to customize keybindings.

### Change terminal size

Edit `lua/plugins/configs/toggleterm.lua` and modify the `size` function.

## Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [Mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

## License

MIT

## Contributing

Feel free to submit issues or pull requests!
