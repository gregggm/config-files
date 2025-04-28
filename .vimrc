syntax on
filetype indent plugin on

set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch

" enable spellcheck when writing git commits
autocmd FileType gitcommit setlocal spell

let gitcommit_summary_length = 70
set backspace=indent,eol,start