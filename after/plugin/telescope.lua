local builtin = require('telescope.builtin')
local utils = require('telescope.utils')

vim.keymap.set('n', '<leader>pf', function()
  builtin.find_files({ cwd = utils.buffer_dir() })
end, { desc = "Find Files in Buffer Dir" })

vim.keymap.set('n', '<leader>ps', function()
  builtin.live_grep({ cwd = utils.buffer_dir() })
end, { noremap = true, silent = true, desc = "Live Grep in Buffer Dir" })
