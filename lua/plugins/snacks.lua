return {
  "folke/snacks.nvim",
  opts = {
    -- dim = {
    --   vim.keymap.set("n", "<leader>dim", "<cmd>lua Snacks.dim()<cr>"),
    --   vim.keymap.set("n", "<leader>dimd", "<cmd>lua Snacks.dim.disable()<cr>"),
    -- },
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
        {
          pane = 2,
          -- gap = 4,
          section = "terminal",
          cmd = (vim.loop.os_uname().sysname == "Windows_NT")
              and 'chafa "C:\\Users\\Ivan\\Desktop\\PAPKA\\8bitpixelartvista.jpg" --format symbols --symbols vhalf --size 55x10 --stretch' -- Windows command
            or "colorscript -e elfman",
          -- or 'chafa "/home/penpen/8bitpixelartvista.jpg" --format symbols --symbols vhalf --size 55x10 --stretch', -- Linux/Unix command
          -- cmd = 'pat "C:\\Users\\Ivan\\Desktop\\PAPKA\\8bitpixelartvista55x15.jpg"',
          -- cmd = "ascii-image-converter 'C:\\Users\\Ivan\\Desktop\\PAPKA\\8bitpixelartvista.jpg' -C -c -d 55,15",
          height = 10,
          padding = 1,
        },
        { section = "keys", gap = 1, padding = 0 },
        {
          pane = 2,
          icon = "     ",
          title = "Recent Files",
          section = "recent_files",
          indent = 7,
          padding = 1,
          gap = 0,
        },
        {
          pane = 2,
          icon = "     ",
          title = "Projects",
          section = "projects",
          indent = 7,
          padding = 1,
          gap = 0,
        },
        -- {
        --   pane = 2,
        --   icon = " ",
        --   title = "Git Status",
        --   section = "terminal",
        --   enabled = function()
        --     return Snacks.git.get_root() ~= nil
        --   end,
        --   cmd = "hub status --short --branch --renames",
        --   height = 5,
        --   padding = 1,
        --   ttl = 5 * 60,
        --   indent = 3,
        -- },
        { section = "startup" },
      },
    },
  },
}
