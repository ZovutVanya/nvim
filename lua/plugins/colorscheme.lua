return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha",
    transparent_background = true,
    integrations = {
      neotree = true,
    },
  },
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
