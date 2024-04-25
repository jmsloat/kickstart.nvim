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
      diagnostics = 'nvim_lsp',
      sort_by = 'relative_directory',
    },
  },
}
