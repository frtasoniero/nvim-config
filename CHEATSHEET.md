# Cheatsheet

Task-oriented reference for this config. `<leader>` is `Space`. For the full
plugin-by-plugin keymap tables, see [README.md](README.md). To search *all*
active keymaps by what they do, run `:Telescope keymaps` and type a word like
`breakpoint` or `format`.

## Open a folder / project

- `nvim .` (or `nvim path/to/project`) from the shell opens Neovim rooted at
  that directory.
- From inside Neovim: `-` opens [oil.nvim](https://github.com/stevearc/oil.nvim)
  on the parent directory of the current file; `<leader>fo` opens Oil in a
  floating window. `:Oil path/to/dir` opens Oil on any specific directory.
- `<leader>ff` fuzzy-finds files under the current working directory
  (Telescope).

## Create / rename / delete a file or folder

Oil treats a directory listing as an editable text buffer:

1. Open Oil (`-` or `<leader>fo`).
2. To create a file: move to an empty line (`o` for a new line) and type the
   filename, then `:w` to apply. To create a folder, type a name ending in
   `/`.
3. To rename: edit the filename text on its line, then `:w`.
4. To delete: delete the line (`dd`), then `:w`. Oil asks for confirmation
   before applying any change.
5. `g?` inside an Oil buffer shows Oil's own full keymap list (navigation,
   toggling hidden files, etc.) — this config only overrides `-` and adds
   `<leader>fo`, everything else is Oil's defaults.

## Find things

| Task | Key |
|---|---|
| Find file by name | `<leader>ff` |
| Grep text across project | `<leader>fg` |
| Search current buffer | `<leader>fc` |
| Recently opened files | `<leader>fr` |
| Open buffers | `<leader>fb` |
| Help tags | `<leader>fh` |
| Search *keymaps* by action | `:Telescope keymaps` |

## Autocomplete while coding (blink.cmp)

The menu pops up automatically as you type. While it's open:

| Task | Key |
|---|---|
| Accept the selected item | `<C-y>` |
| Next / previous item | `<C-n>` / `<C-p>` (or `<Down>` / `<Up>`) |
| Force-open the menu (or toggle docs if already open) | `<C-space>` |
| Close the menu without accepting | `<C-e>` |
| Scroll item documentation | `<C-b>` / `<C-f>` |
| Show/hide function signature help | `<C-k>` |
| Jump to next/previous snippet placeholder | `<Tab>` / `<S-Tab>` |

Note: **Enter is not bound to "accept"** in this config's completion preset
— plain `<CR>` just inserts a newline. Use `<C-y>` to accept.

## Navigate and edit code (LSP)

Works for Go (`gopls`) and C/C++ (`clangd`) once the server attaches:

| Task | Key |
|---|---|
| Go to definition | `gd` |
| Go to declaration | `gD` |
| Find references | `grr` |
| Go to implementation | `gri` |
| Go to type definition | `grt` |
| Hover docs | `K` |
| Rename symbol | `<leader>lr` |
| Code action (quick fix, refactor) | `<leader>la` |
| Show diagnostic on current line | `<leader>ld` |
| Jump to prev/next diagnostic | `[d` / `]d` |
| Format buffer (or selection in visual mode) | `<leader>lf` |
| Switch between `.cpp`/`.h` (clangd only) | `<leader>lh` |

## Debug code (C/C++, nvim-dap)

Requires `lldb-dap` installed and on `$PATH`.

| Task | Key |
|---|---|
| Toggle breakpoint | `<leader>db` |
| Conditional breakpoint | `<leader>dB` |
| Start / continue | `<leader>dc` or `<F5>` |
| Step over | `<leader>do` or `<F10>` |
| Step into | `<leader>di` or `<F11>` |
| Step out | `<leader>dO` or `<F12>` |
| Toggle REPL | `<leader>dr` |
| Toggle debug UI (scopes/stack/watches) | `<leader>du` |
| Terminate session | `<leader>dt` |

The first `<leader>dc`/`<F5>` prompts for the path to the executable to
launch (no build-system integration is configured, so build it yourself
first, e.g. from `<leader>tt`).

## Git (gitsigns)

| Task | Key |
|---|---|
| Jump to next/previous hunk | `]h` / `[h` |
| Preview a hunk's diff | `<leader>ghp` |
| Stage / reset hunk | `<leader>ghs` / `<leader>ghr` |
| Stage / reset whole buffer | `<leader>ghS` / `<leader>ghR` |
| Blame current line | `<leader>ghb` |
| Diff buffer against index / last commit | `<leader>ghd` / `<leader>ghD` |

## Terminal & notifications

| Task | Key |
|---|---|
| Toggle terminal | `<leader>tt` |
| Terminal in right split | `<leader>tw` |
| Floating terminal | `<leader>tz` |
| Notification history | `<leader>nn` |
| Dismiss notifications | `<leader>nd` |

## Misc / survival

| Task | Key |
|---|---|
| Leave insert mode | `jk` |
| Clear search highlight | `<Esc>` |
| Save / quit | `<leader>w` / `<leader>q` |
| Move between windows | `<C-h/j/k/l>` |
| Next / previous buffer | `<leader>bn` / `<leader>bp` |
| Close buffer | `<leader>bd` |
| Indent selection, keep it selected | `<` / `>` in visual mode |
| Show keymaps active in this buffer | `<leader>?` |
