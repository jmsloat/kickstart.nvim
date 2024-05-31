return {
  {
    'nvim-neotest/neotest-go',
  },
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-go',
    },
    opts = {
      adapters = {
        -- require 'neotest-go',
      },
    },
  },
}
