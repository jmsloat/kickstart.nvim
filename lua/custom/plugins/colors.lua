function set_colorscheme()
  vim.cmd.colorscheme 'eldritch'
  -- You can configure highlights by doing something like:
  vim.cmd.hi 'Comment gui=none'
end

return {
  {
    'eldritch-theme/eldritch.nvim',
    priority = 1000,
    -- init = function()
    --   vim.cmd.colorscheme 'eldritch'
    --   vim.cmd.hi 'Comment gui=none'
    -- end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-storm'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    init = function()
      vim.cmd.colorscheme 'kanagawa-wave'
      vim.cmd.hi 'Comment gui=none'
    end,
    opts = {
      theme = 'dragon',
    },
  },
}
