-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("color catppuccin")
vim.cmd("highlight Normal guibg=NONE")
vim.cmd("highlight NormalNC guibg=NONE")
vim.cmd("highlight NonText guibg=NONE")
vim.cmd("highlight NeoTreeNormal guibg=NONE")
vim.cmd("highlight NeoTreeNormalNC guibg=NONE")
vim.cmd("highlight SignColumn guibg=NONE")
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
