# Neovim Keybindings (VSCode-like)

## General Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl+S` | Save file |
| `Ctrl+Q` | Quit |
| `Ctrl+W` | Close editor/buffer |
| `Ctrl+A` | Select all |
| `Ctrl+Z` | Undo |
| `Ctrl+Y` | Redo |
| `Ctrl+C` | Copy to clipboard |
| `Ctrl+V` | Paste from clipboard |
| `Ctrl+X` | Cut to clipboard (visual mode) |
| `Esc` | Clear search highlight |

## Line Manipulation

| Shortcut | Action |
|----------|--------|
| `Alt+Up` | Move line up |
| `Alt+Down` | Move line down |
| `Shift+Alt+Up` | Duplicate line up |
| `Shift+Alt+Down` | Duplicate line down |
| `Ctrl+Shift+K` | Delete line |
| `Ctrl+/` | Toggle comment |
| `Tab` (visual) | Indent |
| `Shift+Tab` (visual) | Outdent |

## File Explorer & Navigation

| Shortcut | Action |
|----------|--------|
| `Ctrl+B` | Toggle sidebar |
| `Space+E` | Focus file explorer |
| `Ctrl+P` | Quick open file |
| `Ctrl+Shift+F` | Search in files (live grep) |
| `Ctrl+F` | Find in current file |
| `Ctrl+Shift+P` | Command palette |
| `Ctrl+R` | Recent files |
| `Ctrl+Tab` | Switch buffer |

## LSP Features

### Go To

| Shortcut | Action |
|----------|--------|
| `F12` or `gd` | Go to definition |
| `Alt+F12` | Peek definition |
| `Shift+F12` or `gr` | Find all references |
| `Ctrl+F12` or `gi` | Go to implementation |
| `gt` | Go to type definition |
| `Ctrl+Shift+O` | Go to symbol in file |
| `Ctrl+T` | Go to symbol in workspace |

### Code Intelligence

| Shortcut | Action |
|----------|--------|
| `K` | Show hover documentation |
| `Ctrl+Shift+Space` | Trigger parameter hints |
| `F2` | Rename symbol |
| `Ctrl+.` | Quick fix / Code action |
| `Shift+Alt+F` | Format document |

### Problems/Diagnostics

| Shortcut | Action |
|----------|--------|
| `Ctrl+Shift+M` | Show problems panel |
| `F8` | Next problem |
| `Shift+F8` | Previous problem |
| `Space+D` | Show line diagnostics |

## Terminal

| Shortcut | Action |
|----------|--------|
| `Ctrl+\`` | Toggle terminal |
| `Ctrl+\`` (in terminal) | Exit terminal mode |

## Split/Window Management

| Shortcut | Action |
|----------|--------|
| `Ctrl+\` | Split editor right |
| `Ctrl+H` | Focus left split |
| `Ctrl+J` | Focus down split |
| `Ctrl+K` | Focus up split |
| `Ctrl+L` | Focus right split |
| `Ctrl+Left/Right/Up/Down` | Navigate windows |
| `Ctrl+Shift+Left/Right` | Resize width |
| `Ctrl+Shift+Up/Down` | Resize height |

## Git (Source Control)

| Shortcut | Action |
|----------|--------|
| `Space+GG` | Open Git status |
| `Space+GB` | Git blame line |
| `Space+GD` | Preview changes (diff) |
| `Space+GR` | Revert changes |
| `Space+GS` | Stage changes |
| `[C` | Previous change |
| `]C` | Next change |

## Other Useful Features

| Shortcut | Action |
|----------|--------|
| `Ctrl+Shift+O` | Toggle outline |
| `Space+CC` | Open Claude Code Chat |
| `Space+CR` | Review Claude Changes |

## Completion (Insert Mode)

| Shortcut | Action |
|----------|--------|
| `Ctrl+Space` | Trigger completion |
| `Enter` | Confirm selection |
| `Tab` | Next item / Jump to next snippet |
| `Shift+Tab` | Previous item / Jump to previous snippet |
| `Ctrl+B` | Scroll docs up |
| `Ctrl+F` | Scroll docs down |
| `Ctrl+E` | Abort completion |

## Tips

- Most shortcuts match VSCode exactly
- Leader key is `Space` for additional commands
- All `Ctrl` shortcuts work in normal mode unless specified
- Use `:WhichKey` to see available keybindings interactively (if installed)
