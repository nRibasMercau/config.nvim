-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('theprimeagen/harpoon')

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    --	  "neovim/nvim-lspconfig",
    --       
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		   {'williamboman/mason.nvim'},
		   {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},

      -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }


  use {
      "ap/vim-css-color"
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }

  use {
    'folke/trouble.nvim',
    requires = { 'nvim-tree/nvim-web-devicons'},
    opts = { }
  }

  use {
    'folke/todo-comments.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    opts = { }
  }

  use { 'nvim-tree/nvim-web-devicons' }


  -- use { 'vim-pandoc/vim-pandoc'}
  -- use { 'vim-pandoc/vim-pandoc-syntax'}
  -- use { 'zk-org/zk-nvim' }
  use({
    'MeanderingProgrammer/markdown.nvim',
    as = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})
    end,
  })

  -- THEMES 
  use ({ 'rafi/awesome-vim-colorschemes', as = 'awesome-vim-colorschemes', })
  use { 'folke/tokyonight.nvim', lazy = false, priority = 1000, opts = {}, }
  use { "rebelot/kanagawa.nvim" }
  use { "catppuccin/nvim", as = 'catppuccin' }
  use { "rose-pine/neovim", as = "rose-pine" }
  use { "EdenEast/nightfox.nvim" }

end)
