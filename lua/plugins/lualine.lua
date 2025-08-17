return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      component_separators = "",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { { "mode", separator = { left = "" }, right_padding = 0 } },
      lualine_y = { { "fileformat", symbols = { unix = "" } }, "encoding" },
      lualine_z = {
        {
          "lsp_status",
          separator = { right = "" },
          left_padding = 0,
        },
      },
    },
  },
}
