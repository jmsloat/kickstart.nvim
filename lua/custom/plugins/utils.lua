-- utils.lua is where all the "core" plugins go. There are certain things that I will want
-- in every single nvim env I have.
return {
  {
    'aserowy/tmux.nvim',
    opts = {},
  },
  {
    'akinsho/toggleterm.nvim',
    opts = {
      direction = 'float',
      open_mapping = [[<c-\>]],
      start_in_insert = true,
      float_opts = {
        border = 'curved',
      },
    },
  },
  {
    'akinsho/bufferline.nvim',
    opts = {
      options = {
        diagnostics = 'nvim_lsp',
        sort_by = 'relative_directory',
      },
    },
  },
  {
    'sindrets/diffview.nvim',
    opts = {},
  },
  {
    'kevinhwang91/nvim-ufo',
    dependencies = { 'kevinhwang91/promise-async' },
    opts = {},
  },
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xd',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      },
      {
        '<leader>Xd',
        '<cmd>Trouble diagnostics<cr>',
      },
      {
        '<leader>gr',
        '<cmd>Trouble lsp_references<cr>',
      },
    },
  },
}
