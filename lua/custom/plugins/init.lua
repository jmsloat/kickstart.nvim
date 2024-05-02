-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    opts = {},
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = function()
      local keys = {
        {
          '<leader>ja',
          function()
            require('harpoon'):list():add()
          end,
        },
        {
          '<leader>jj',
          function()
            local harpoon = require 'harpoon'
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = 'Harpoon Quick Menu',
        },
      }
      return keys
    end,
  },
  {
    'FabijanZulj/blame.nvim',
    opts = {},
  },
}
