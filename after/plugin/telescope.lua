local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = '[ ] Find files' })
vim.keymap.set('n', '<leader>g', builtin.git_files, { desc = '[p] Find git files' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[fg] Live grep' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = '[fb] Find buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[fh] Help tags' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[sw] Search current word' })
--vim.keymap.set('n', '<leader>fg', function()
--    builtin.grep_string({ search = vim.fn.input("Grep > ") });
--end)

-- Shortcut for searching neovim config files
vim.keymap.set('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[sn] search neovim files'})

vim.keymap.set('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    windblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in the current buffer'})
