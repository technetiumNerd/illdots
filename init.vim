"vim-plug
call plug#begin()

Plug 'ellisonleao/gruvbox.nvim'

call plug#end()

"normal vim stuff
set background=dark
colorscheme gruvbox
set ignorecase
set smartcase
set scrolloff=5
set sidescrolloff=5
set ruler
set relativenumber
set number
set showcmd
set expandtab
filetype plugin indent on
set shiftround
set tabstop=2
set shiftwidth=2
set smarttab
set clipboard=unnamedplus
set title
set hidden
set mouse=a
set noswapfile
set autoread
set history=1000
set undofile
set termguicolors

hi Normal ctermbg=NONE guibg=NONE
