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
filetype off

set encoding=utf8

set nocompatible
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set nowrap
set backspace=indent,eol,start
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

set hidden

filetype off
filetype plugin indent on
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.js set filetype=javascript.jsx

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'rakr/vim-one'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'sheerun/vim-polyglot'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'groenewege/vim-less'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mileszs/ack.vim'
Plugin 'nerdtree-ack'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline Font for MacVim
set guifont=Menlo\ For\ Powerline

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

" Show the ruler bar at the bottom of the screen
set ruler
set number

" Show the statusline
set laststatus=2

" Highlight the search result
set hlsearch

" Incremental search results
set incsearch

" Allow mouse usage
set mouse=a

" No bells on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable
set background=dark
let g:solarized_termcolors = 256
let g:solarized_visibility = 'high'
let g:solarized_contrast = 'high'
let g:indent_guides_auto_colors = 0
colorscheme solarized

set display+=lastline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" ALE
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_error = '🤮'
let g:ale_sign_warning = '🚩'
let g:ale_statusline_format = ['🤮 %d', '🚩 %d', '']

" Vim JSX
let g:jsx_ext_required = 0

" CtrlP
let g:ctrlp_map = '<c-t>'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Vim Multiple Cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-l>'
let g:multi_cursor_prev_key='<C-h>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Indent Guide
"let g:indent_guides_enable_on_vim_startup=1

" NERDTree settings
noremap <leader>n :NERDTree <CR>
noremap <leader>m :NERDTreeFind <CR>

" Buffer Switching
:noremap <C-n> :bnext<CR>
:noremap <C-p> :bprevious<CR>
:nmap <leader>d :bnext<CR>:bdelete #<CR>

" Insert a single character in normal mode with <Space>
:nmap <Space> i_<Esc>r

" NERDTree Ignore some stuff.
let NERDTreeIgnore=['\.pyc$', '\~$']
