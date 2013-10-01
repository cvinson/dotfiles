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

set nocompatible
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim UI 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show the ruler bar at the bottom of the screen
set ruler
set number

" Set the height of the command bar
set cmdheight=2

" Highlight the search result
set hlsearch

" Incremental search results
set incsearch

" No bells on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
