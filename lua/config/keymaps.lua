-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "

-- :W == :w
vim.api.nvim_create_user_command("W", "write", {})
vim.api.nvim_create_user_command("Q", "quit", {})

-- clear highlighting
vim.keymap.set({ "n" }, "<C-l>", "<cmd>noh<CR>")

-- move highlighted text up and down with autoindenting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append next line without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- paste over highligh without loosing the text in buffer
vim.keymap.set("x", "<leader>p", '"_dP')

-- start replacing the word you are on in the whole file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make the file executable
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })

-- jumping to the end backwards
vim.keymap.set("n", "<C-e>", "ge")

-- scrolling down without moving the cursor
vim.keymap.set("n", "<C-h>", "<C-e>")

-- jumping half page keeps the cursor at the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- LSP renaming
vim.keymap.set("n", "<leader>rn", ":IncRename ")

-- copy line diagnostics
vim.keymap.set(
  "n",
  "<leader>cy",
  ':lua vim.diagnostic.open_float()<CR>:lua vim.diagnostic.open_float()<CR>ggVG"+y<CR>:q<CR>',
  { desc = 'Copy Line Diagnostics to "+' }
)
