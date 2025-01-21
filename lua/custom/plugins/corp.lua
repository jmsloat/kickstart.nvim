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
    {
      url = 'sso://user/rprs/buganizer.nvim',
      dependencies = {
        'nvim-telescope/telescope.nvim',
        { url = 'sso://user/vicentecaycedo/buganizer-utils.nvim' },
      },
      cmd = {
        'FindBugs',
        'ShowBugUnderCursor',
      },
    },
    {
      url = 'sso://user/vicentecaycedo/cmp-buganizer',
      config = true,
    },
  }
else
  return {}
end
