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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

filetype off
filetype plugin indent on
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.coffee set filetype=coffee

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'altercation/vim-colors-solarized'
Plugin 'justincampbell/vim-railscasts'
Plugin 'tpope/vim-rails.git'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'groenewege/vim-less'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mileszs/ack.vim'
Plugin 'nerdtree-ack'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jgdavey/tslime.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

call vundle#end()            " required
filetype plugin indent on    " required

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
colorscheme solarized

set display+=lastline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim RSpec Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Aliases 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command W w
:command Q q

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Scrolling 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" NERDTree settings
noremap <leader>n :NERDTree <CR>

" Insert a single character in normal mode with <Space>
:nmap <Space> i_<Esc>r

" NERDTree Ignore some stuff.
let NERDTreeIgnore=['\.pyc$', '\~$']
