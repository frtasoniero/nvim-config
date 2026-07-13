local map = vim.keymap.set

-- Leave insert mode with jk
map("i", "jk", "<Esc>", {
  desc = "Leave insert mode",
})

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>", {
  desc = "Clear search highlighting",
})

-- Save and quit
map("n", "<leader>w", "<cmd>write<CR>", {
  desc = "Write file",
})

map("n", "<leader>q", "<cmd>quit<CR>", {
  desc = "Quit window",
})

-- Buffer navigation
map("n", "<leader>bn", "<cmd>bnext<CR>", {
  desc = "Next buffer",
})

map("n", "<leader>bp", "<cmd>bprevious<CR>", {
  desc = "Previous buffer",
})

map("n", "<leader>bd", "<cmd>bdelete<CR>", {
  desc = "Delete buffer",
})

-- Window navigation
map("n", "<C-h>", "<C-w>h", {
  desc = "Move to left window",
})

map("n", "<C-j>", "<C-w>j", {
  desc = "Move to lower window",
})

map("n", "<C-k>", "<C-w>k", {
  desc = "Move to upper window",
})

map("n", "<C-l>", "<C-w>l", {
  desc = "Move to right window",
})

-- Keep selected lines selected while indenting
map("v", "<", "<gv", {
  desc = "Indent left",
})

map("v", ">", ">gv", {
  desc = "Indent right",
})

-- Go uses tabs for source indentation.
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.expandtab = false
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})
