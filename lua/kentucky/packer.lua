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

  use ({
  	'rafi/awesome-vim-colorschemes',
	as = 'awesome-vim-colorschemes',
	config = function()
		vim.cmd('colorscheme jellybeans')
	end
  })

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

  -- THEMES 
  use { 'folke/tokyonight.nvim', lazy = false, priority = 1000, opts = {}, }
  use { "rebelot/kanagawa.nvim" }
  use { "catppuccin/nvim", as = 'catppuccin' }
  use { "rose-pine/neovim", as = "rose-pine" }
  use { "EdenEast/nightfox.nvim" }

end)
