return {
  "folke/snacks.nvim",
  opts = {
    dim = {
      vim.keymap.set("n", "<leader>I", "<cmd>lua Snacks.dim()<cr>"),
      vim.keymap.set("n", "<leader>Id", "<cmd>lua Snacks.dim.disable()<cr>"),
    },
    dashboard = {
      preset = {
        header = [[
                                                                    
      ████ ██████           █████      ██                     
     ███████████             █████                             
     █████████ ███████████████████ ███   ███████████   
    █████████  ███    █████████████ █████ ██████████████   
   █████████ ██████████ █████████ █████ █████ ████ █████   
 ███████████ ███    ███ █████████ █████ █████ ████ █████  
██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
      --       sections = {
      --         { section = "header" },
      --         {
      --           pane = 2,
      --           -- gap = 4,
      --           section = "terminal",
      --           -- cmd = 'chafa "/Users/gurkoff/8bitpixelartvista.jpg" --format symbols --symbols vhalf --size 55x10 --stretch',
      --           cmd = 'viu "/Users/gurkoff/8bitpixelartvista.jpg"',
      --           height = 10,
      --           padding = 2,
      --         },
      --         { section = "keys", gap = 1, padding = 0 },
      --         {
      --           pane = 2,
      --           icon = "     ",
      --           title = "Recent Files",
      --           section = "recent_files",
      --           indent = 7,
      --           padding = 1,
      --           gap = 0,
      --         },
      --         {
      --           pane = 2,
      --           icon = "     ",
      --           title = "Projects",
      --           section = "projects",
      --           indent = 7,
      --           padding = 1,
      --           gap = 0,
      --         },
      --         -- {
      --         --   pane = 2,
      --         --   icon = " ",
      --         --   title = "Git Status",
      --         --   section = "terminal",
      --         --   enabled = function()
      --         --     return Snacks.git.get_root() ~= nil
      --         --   end,
      --         --   cmd = "hub status --short --branch --renames",
      --         --   height = 5,
      --         --   padding = 1,
      --         --   ttl = 5 * 60,
      --         --   indent = 3,
      --         -- },
      --         { section = "startup" },
      --       },
    },
  },
}
