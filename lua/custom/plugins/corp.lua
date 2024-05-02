local iscorp = os.getenv 'CORP'

if iscorp then
  return {
    {
      'epwalsh/obsidian.nvim',
      lazy = true,
      dependencies = {
        'nvim-lua/plenary.nvim',
      },
      opts = {
        workspaces = {
          {
            name = 'work',
            path = '~/notes',
          },
        },
      },
      ft = 'markdown',
    },
  }
else
  return {}
end
