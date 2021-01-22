set nocp "Not vi-compatibility mode pls
syntax on "Colour my shit
colorscheme industry "Pick a card
set wildmenu
set showcmd
set autoindent
set expandtab
filetype indent on
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
set hlsearch "Highlight search
set incsearch
set ignorecase "Case insensitive search
set smartcase "Case sensitive search when using capitals
set scrolloff=2 "Keep 2 lines above/below cursor
set sidescrolloff=5 "Keep 5 chars beside cursor
set wrap "Line wrap
set ruler "Status line numbers
set relativenumber "Line number shiz
set number "Line numbers; With relativenumber keep current linenumber
set noerrorbells
set title
set history=1000


set mouse=a "Mouse scroll

"CTRL+L (redraw screen) + clear search
nnoremap <C-L> :nohlsearch<CR><C-L> 
