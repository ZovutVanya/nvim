local lint_progress = function()
  -- local linters = require("lint").get_running()
  local filetype = vim.bo.filetype
  local linters = require("lint").linters_by_ft[filetype]

  if #linters == 0 then
    return ""
  end
  return "󰈾 " .. table.concat(linters, ", ")
end

local conform_progress = function()
  local conform = require("conform")
  local buf = vim.api.nvim_get_current_buf()
  local formatters = conform.list_formatters(buf)

  if #formatters == 0 then
    return "" -- no formatter
  end

  local names = {}
  for _, f in ipairs(formatters) do
    table.insert(names, f.name)
  end

  return "⁋ " .. table.concat(names, ", ")
end

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      section_separators = { left = "", right = "" },
      component_separators = "|",
    },
    sections = {
      lualine_a = { { "mode", separator = { left = "" }, right_padding = 0 } },
      lualine_y = {
        "lsp_status",
        lint_progress,
        conform_progress,
      },
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
