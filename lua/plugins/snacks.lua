return {
  "folke/snacks.nvim",
  opts = {
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
          -- cmd = 'pat "C:\\Users\\Ivan\\Desktop\\PAPKA\\8bitpixelartvista55x15.jpg"',
          cmd = 'chafa "C:\\Users\\Ivan\\Desktop\\PAPKA\\8bitpixelartvista.jpg" --format symbols --symbols vhalf --size 55x10 --stretch',
          -- cmd = 'chafa "C:\\Users\\Ivan\\Pictures\\Saved Pictures\\Wallpapers\\39750196589805232 (2).jpg" --size 55x10 --stretch',
          -- cmd = (vim.loop.os_uname().sysname == "Windows_NT")
          --   and 'Show-ColorScript -Name "elfman"'  -- Windows command
          --   or 'colorscript -e elfman',              -- Linux/Unix command
          height = 10,
          padding = 1,
        },
        { section = "keys", gap = 1, padding = 0 },
        { pane = 2, icon = "     ", title = "Recent Files", section = "recent_files", indent = 7, padding = 1 },
        { pane = 2, icon = "     ", title = "Projects", section = "projects", indent = 7, padding = 1 },
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
