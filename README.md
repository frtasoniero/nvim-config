# nvim config

A minimal Neovim configuration focused on Go development, built on [lazy.nvim](https://github.com/folke/lazy.nvim).

## Requirements

- **Neovim >= 0.12**
- **Git** — for lazy.nvim bootstrap and plugin management
- **Make** — for compiling `telescope-fzf-native`
- **A Nerd Font** — for icons (recommended: any Mono variant)
- **`gopls`** — Go language server (`go install golang.org/x/tools/gopls@latest`)

## Installation

Clone this repository into your Neovim config directory:

```bash
git clone https://github.com/<your-username>/<your-repo>.git ~/.config/nvim
```

Launch Neovim. lazy.nvim will bootstrap itself and install all plugins automatically.

## Plugins

| Plugin | Purpose |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration (gopls) |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | Autocompletion |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatting with format-on-save |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and parsing |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | Native FZF sorter for Telescope |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File explorer as a buffer |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git decorations and hunk actions |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Notifications, terminal, indent guides, and more |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap hints |
| [mini.icons](https://github.com/echasnovski/mini.icons) | Icons with nvim-web-devicons compatibility |

## Keymaps

`<leader>` is `Space`.

### General

| Key | Description |
|---|---|
| `jk` | Leave insert mode |
| `<Esc>` | Clear search highlighting |
| `<leader>w` | Write file |
| `<leader>q` | Quit window |

### Buffers

| Key | Description |
|---|---|
| `<leader>bn` | Next buffer |
| `<leader>bp` | Previous buffer |
| `<leader>bd` | Delete buffer |

### Windows

| Key | Description |
|---|---|
| `<C-h/j/k/l>` | Navigate windows |

### Visual

| Key | Description |
|---|---|
| `<` / `>` | Indent left/right (keeps selection) |

### Find (Telescope)

| Key | Description |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Find help tags |
| `<leader>fr` | Recent files |
| `<leader>fc` | Find in current buffer |
| `<leader>fo` | Open Oil (floating) |

### LSP

| Key | Description |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `grr` | Find references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `K` | Hover documentation |
| `<leader>lr` | Rename symbol |
| `<leader>la` | Code action |
| `<leader>ld` | Line diagnostics |
| `<leader>lf` | Format buffer or selection |
| `[d` / `]d` | Previous/next diagnostic |

### Git (gitsigns)

| Key | Description |
|---|---|
| `]h` / `[h` | Next/previous hunk |
| `<leader>ghs` | Stage hunk |
| `<leader>ghr` | Reset hunk |
| `<leader>ghp` | Preview hunk |
| `<leader>ghi` | Preview hunk inline |
| `<leader>ghb` | Blame line |
| `<leader>ghd` | Diff against index |
| `<leader>ghD` | Diff against last commit |
| `<leader>ghS` | Stage buffer |
| `<leader>ghR` | Reset buffer |

### Terminal (snacks)

| Key | Description |
|---|---|
| `<leader>tt` | Toggle terminal |
| `<leader>tw` | Terminal on right |
| `<leader>tz` | Floating terminal |

### Notifications (snacks)

| Key | Description |
|---|---|
| `<leader>nn` | Notification history |
| `<leader>nd` | Dismiss notifications |

### File Explorer (oil)

| Key | Description |
|---|---|
| `-` | Open parent directory |
| `<leader>fo` | Open Oil (floating window) |

### which-key

| Key | Description |
|---|---|
| `<leader>?` | Show buffer-local keymaps |
