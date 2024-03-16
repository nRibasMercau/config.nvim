vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = '[pv] Show directory' })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- In visual mode, move selection up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- In visual mode, move selection down

vim.keymap.set("n", "J", "mzJ`z") -- Append current line above, keep cursor at the beggining
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Jump half page down, keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Jump half page up, keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv") -- Search, keep search term in the middle
vim.keymap.set("n", "N", "Nzzzv") -- Search, keep search term in the middle
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[rw] Replace all occurrences of current word' }) -- Search and replace all occurrences of current word

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
