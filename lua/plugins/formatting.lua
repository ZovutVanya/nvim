return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
      python = { "usort", "ruff" },
      sql = { "sqlfmt" },
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
  },
}
