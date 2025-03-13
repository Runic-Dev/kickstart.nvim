return {
  'kdheepak/lazygit.nvim',
  opts = {
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = {
      { '<leader>g', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  config = function()
    vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = '[G]it' })
  end,
}
