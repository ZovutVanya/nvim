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
          -- "sqls",
        },
        automatic_installation = true,
        handlers = {
          rust_analyzer = function() end,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    opts = {
      servers = {
        lua_ls = { settings = { diagnostics = { globals = { "vim" } } } },
        racket_langserver = { filetypes = { "racket" } },
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "recommended",
                inlayHints = {
                  callArgumentNames = true,
                  variableTypes = true,
                  functionReturnTypes = true,
                },
                useLibraryCodeForTypes = false,
                diagnosticSeverityOverrides = {
                  reportUnusedCallResult = "none",
                  -- reportUnknownMemberType = "none",
                  -- reportUnknownVariableType = "none",
                },
              },
            },
          },
        },
        -- pylsp = {},
        clangd = {},
        powershell_es = {
          bundle_path = "C:\\Users\\Ivan\\AppData\\Local\\nvim-data\\mason\\packages\\powershell-editor-services",
          init_options = {
            enableProfileLoading = false,
          },
        },
        bashls = {},
        sqls = {},
      },
    },
    config = function(_, opts)
      local lspconfig = require("lspconfig")
      for server, config in pairs(opts.servers) do
        if server ~= "rust_analyzer" then
          config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
          lspconfig[server].setup(config)
        end
      end
    end,
  },
}
