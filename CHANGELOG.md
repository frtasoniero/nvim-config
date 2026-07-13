# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

## [1.0.0] - 2026-07-13

### Added

- Bootstrap [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager with auto-install on first launch
- LSP support via `nvim-lspconfig` with `gopls` configured for Go development
  - Inlay hints, static analysis, `gofumpt` formatting, and `staticcheck`
  - Keymaps for go-to-definition, references, rename, code actions, and diagnostics
- Autocompletion via `blink.cmp` with LSP, path, snippet, and buffer sources
- Code formatting via `conform.nvim` with format-on-save
- Syntax highlighting via `nvim-treesitter` for Go, Lua, Markdown, Vim, and more
- Fuzzy finding via `telescope.nvim` with native FZF sorter
- File explorer via `oil.nvim` (edit the filesystem like a buffer)
- Git integration via `gitsigns.nvim` with hunk staging, resetting, diffing, and blame
- Quality-of-life utilities via `snacks.nvim`: notifications, terminal, indent guides, big file handling, and word highlighting
- Keymap hints via `which-key.nvim`
- Icons via `mini.icons` with `nvim-web-devicons` compatibility shim
- Core options: relative line numbers, 4-space indentation, system clipboard, persistent undo, smart search
- Leader key set to `Space`, local leader to `\`
- Go-specific autocmd to enforce tab indentation
