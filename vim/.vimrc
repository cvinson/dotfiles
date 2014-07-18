"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"   Colin Vinson
"   http://colinvinson.com
"   http://github.com/cvinson
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" General 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" How many lines of history VIM will remember
set history=1000
set t_Co=256

set noswapfile

set nocompatible
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab
set backspace=indent,eol,start

filetype plugin indent on
au BufNewFile,BufRead *.less set filetype=css

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'FuzzyFinder'
Bundle 'tpope/vim-rails.git'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'groenewege/vim-less'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'mileszs/ack.vim'
Bundle 'nerdtree-ack'
Bundle 'tpope/vim-fugitive'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim UI 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline Font for MacVim
set guifont=Menlo\ For\ Powerline

" Show the ruler bar at the bottom of the screen
set ruler
set number

" Show the statusline
set laststatus=2

" Highlight the search result
set hlsearch

" Incremental search results
set incsearch

" No bells on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable
set background=dark
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey26
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Scrolling 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" NERDTree settings
noremap <leader>n :NERDTree <CR>
