local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
  require('telescope.builtin').live_grep()
end, { noremap = true, silent = true })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
