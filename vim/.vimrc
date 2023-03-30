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
set updatetime=300

set noswapfile

set encoding=utf8

"set nocompatible
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
set cursorline
set backspace=indent,eol,start
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set switchbuf=useopen,usetab

"set foldmethod=indent
"au BufNewFile,BufRead * normal zR

set shortmess+=c

set hidden

filetype on
filetype indent on
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
Plugin 'jceb/vim-orgmode'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'groenewege/vim-less'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mileszs/ack.vim'
Plugin 'nerdtree-ack'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
"Plugin 'w0rp/ale'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ahw/vim-pbcopy'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'prettier/vim-prettier'
Plugin 'morhetz/gruvbox'
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plugin 'mtth/scratch.vim'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()            " required

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

let g:EasyMotion_verbose = 0

syntax enable
set background=dark
let g:solarized_termcolors = 256
let g:solarized_visibility = 'high'
let g:solarized_contrast = 'high'
" colorscheme solarized
colorscheme gruvbox

set display+=lastline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" ALE
"let g:ale_linters = { 'javascript': ['eslint'] }
"let g:ale_sign_error = '🤮'
"let g:ale_sign_warning = '🚩'
"let g:ale_statusline_format = ['🤮 %d', '🚩 %d', '']

" Vim JSX
let g:jsx_ext_required = 0

" CtrlP
let g:ctrlp_map = '<c-t>'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_show_hidden = 1

" Vim Multiple Cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-l>'
let g:multi_cursor_prev_key='<C-h>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Vim Polyglot
let g:polyglot_disabled = ['jsx', 'javascript', 'markdown', 'graphql']

" Indent Guide
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd ctermbg=235
hi IndentGuidesEven ctermbg=236

" NERDTree settings
let g:NERDTreeMinimalMenu=1
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

" pbcopy integration
let g:vim_pbcopy_local_cmd = "pbcopy"

" SnipMate
let g:snipMate = { 'snippet_version' : 1 }

" COC
let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-tsserver', 'coc-snippets']
let g:coc_node_path= '~/.nvm/versions/node/v16.15.0/bin/node'

set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


" Move lines
"
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Vimwiki
let g:vimwiki_list = [{ "path": "~/Notes", "path_html": "~/Notes/export/html/" }]
let wiki = {}
let wiki.ext = '.md'
let wiki.syntax = 'markdown'

let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
