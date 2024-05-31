local iscorp = os.getenv 'CORP'

if iscorp then
  -- yamls are almost always helm
  vim.api.nvim_create_autocmd('BufWinEnter', {
    pattern = '*.yaml',
    command = 'set filetype=helm',
  })

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
        disable_frontmatter = true,
      },
      ft = 'markdown',
    },
  }
else
  return {}
end
