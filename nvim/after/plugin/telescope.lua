local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ft', builtin.find_files, { desc = 'Telescope find files' })
