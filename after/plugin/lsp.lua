---
-- LSP setup
--
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers
require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'lua_ls', 'jedi_language_server', 'rust_analyzer', 'sqlls', 'eslint'},
	handlers = {
		lsp_zero.default_setup,
  }
})

---
-- Autocompletion setup
---
local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- `Enter` to confirm selected autocompletion
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        -- `
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    })
})

---
-- Keymaps 
--
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
  callback = function(event)

    -- Function to map LSP items 
    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    -- Jump to definition of the word under cursor 
    map('gd', require('telescope.builtin').lsp_definitions, '[gd] Go to definition')

    map('gr', require('telescope.builtin').lsp_references, '[gr] Go to references')

    --map('rn', vim.lsp.buf.rename, '[rn] Rename variable')

    --map('<leader>ca', vim.lsp.buf.code_action, '[ca] Code action')
  end
})


