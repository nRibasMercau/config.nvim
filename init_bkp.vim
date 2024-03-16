:set encoding=utf8
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set expandtab
:set softtabstop=4
:set mouse=a
:set smartcase
:set ignorecase
:set incsearch
:set termguicolors
:set scrolloff=8

call plug#begin()

Plug 'vim-airline/vim-airline' 
Plug 'junegunn/fzf'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

:colorscheme jellybeans

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
