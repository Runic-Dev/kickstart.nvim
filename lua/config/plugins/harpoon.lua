return {
  'ThePrimeagen/harpoon',
  opts = {
    global_settings = {
      save_on_toggle = false,
      save_on_change = true,
      enter_on_sendcmd = false,
      tmux_autoclose_windows = false,
      excluded_filetypes = { 'harpoon' },
      mark_branch = false,
      tabline = true,
    },
  },
  config = function(_, opts)
    require('harpoon').setup(opts)
    vim.api.nvim_set_keymap('n', '<leader>aa', ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap(
      'n',
      '<leader>a.',
      ":lua (function() local harpoon = require('harpoon.mark'); harpoon.add_file(); require('notify')('File added to Harpoon!', 'info', { title = 'Harpoon' }); end)()<CR>",
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap('n', '<leader>ah', ":lua require('harpoon.ui').nav_file(1)<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>aj', ":lua require('harpoon.ui').nav_file(2)<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>ak', ":lua require('harpoon.ui').nav_file(3)<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>al', ":lua require('harpoon.ui').nav_file(4)<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>an', ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>ap', ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true, silent = true })
  end,
}
