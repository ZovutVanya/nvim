return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "basedpyright",
          -- "pylsp",
          "clangd",
          "powershell_es",
          "bashls",
          "sqls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },

    opts = {
      servers = {
        lua_ls = {},
        racket_langserver = { filetypes = { "racket" } },
        basedpyright = {},
        -- pylsp = {},
        clangd = {},
        powershell_es = {},
        bashls = {},
        sqls = {},
      },
    },
    config = function(_, opts)
      local lspconfig = require("lspconfig")
      for server, config in pairs(opts.servers) do
        config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end,
  },
  -- {
  --   "amrbashir/nvim-docs-view",
  --   event = { "BufReadPre", "BufNewFile" },
  --   -- lazy = true,
  --   cmd = "DocsViewToggle",
  --   opts = {
  --     position = "right",
  --     width = 60,
  --   },
  --   vim.keymap.set("n", "<leader>cd", ":DocsViewToggle<CR>", {}),
  -- },
}
