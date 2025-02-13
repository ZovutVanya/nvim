-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- colorscheme and transparency

vim = vim

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

if package.config:sub(1, 1) == "\\" then
  vim.cmd("set shell=pwsh")
  vim.cmd("set shellcmdflag=-command")
  vim.cmd('set shellquote="')
  vim.cmd("set shellxquote=")
end
