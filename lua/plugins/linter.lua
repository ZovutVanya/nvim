return {
  "mfussenegger/nvim-lint",
  event = "LazyFile",
  opts = {
    events = { "BufWritePost", "BufReadPost", "InsertLeave", "BufEnter" },
    linters_by_ft = {
      sh = { "shellcheck" },
      zsh = { "shellcheck", "zshn" },
      python = { "ruff" },
      -- python = { "mypy" },
      c = { "cpplint" },
      cpp = { "cpplint" },
      lua = { "selene" },
      sql = { "postgrestools" },
    },
    linters = {
      shellcheck = {
        condition = function(ctx)
          return not ctx.filename:match("%.env")
        end,
      },
    },
  },
  config = function(_, opts)
    local lint = require("lint")

    lint.linters.zshn = {
      name = "zshn",
      cmd = "zsh",
      stdin = false,
      append_fname = true,
      args = { "-n" }, -- syntax check only
      stream = "stderr",
      ignore_exitcode = true,
      parser = require("lint.parser").from_errorformat(
        "%f:%l: %m",
        { source = "zsh -n", severity = vim.diagnostic.severity.ERROR }
      ),
    }

    -- Prepend --shell=bash to shellcheck args
    table.insert(lint.linters.shellcheck.args, 1, "--shell=bash")

    lint.linters_by_ft = vim.tbl_extend("force", lint.linters_by_ft, opts.linters_by_ft)

    vim.api.nvim_create_autocmd(opts.events, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
