return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      component_separators = "",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { { "mode", separator = { left = "" }, right_padding = 0 } },
      lualine_y = { "lsp_status" },
      lualine_z = {
        {
          "encoding",
        },
        {
          "fileformat",
          symbols = { unix = " | ", dos = "󰨡" },
          separator = { right = "" },
          left_padding = 0,
        },
      },
    },
  },
}
