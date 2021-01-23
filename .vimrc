set nocp "Not vi-compatibility mode pls
syntax on "Syntax colouration
colorscheme industry "Pick a card
set wildmenu "Nicer tab completion+bar
set wildmode=longest:full "Command autocompletion extend to longest match and auto
set showcmd "Show info about last command etc
set autoindent "Keep indentation
set expandtab "Tabs are spaces
filetype indent on "Try to get indentation right depending on filetype
set shiftround "Round indents to n*shiftwidth
set shiftwidth=4 "(Auto)indentation is 4 spaces
set smarttab "Work properly with spaces as tabs
set tabstop=4 "Tabs become n*tabstop spaces
"set hlsearch "Highlight search
set incsearch "Show search results as you are typing
set ignorecase "Case insensitive search
set smartcase "Case sensitive search when using capitals
set scrolloff=2 "Keep 2 lines above/below cursor
set sidescrolloff=5 "Keep 5 chars beside cursor
set wrap "Line wrap
set ruler "Status line numbers
set relativenumber "Line number shiz
set number "Line numbers; With relativenumber keep current linenumber
set noerrorbells "SHUT UP
set title "Make console title useful
set history=1000 "Undo history
set mouse=a "Mouse scroll and click to select


"Mapping of CTRL+L (redraw screen) + clear search. 
    "nnoremap to work in normal mode(n), noremap means not recursive
nnoremap <C-L> :nohlsearch<CR><C-L> 
