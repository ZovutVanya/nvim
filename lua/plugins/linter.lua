return {
  "mfussenegger/nvim-lint",
  event = "LazyFile",
  opts = {
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      sh = { "shellcheck" },
      python = { "ruff" },
      -- python = { "mypy" },
      c = { "cpplint" },
      cpp = { "cpplint" },
      lua = { "selene" },
      sql = { "postgrestools" },
      -- sql = { "sqlfluff" },
      --
      -- Use the "*" filetype to run linters on all filetypes.
      -- ['*'] = { 'global linter' },
      -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
      -- ['_'] = { 'fallback linter' },
      -- ["*"] = { "typos" },
    },
  },
  config = function(_, opts)
    local lint = require("lint")

    -- apply linters_by_ft config
    lint.linters_by_ft = opts.linters_by_ft

    -- prevent shellcheck from running on .env files
    lint.linters.shellcheck = vim.tbl_extend("force", lint.linters.shellcheck, {
      condition = function(ctx)
        return not ctx.filename:match("%.env")
      end,
    })

    -- set up autocommands for lint events
    -- vim.api.nvim_create_autocmd(opts.events, {
    --   callback = function()
    --     require("lint").try_lint()
    --   end,
    -- })
  end,
}
