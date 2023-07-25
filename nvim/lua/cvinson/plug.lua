local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install'] })
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = vim.fn[':TSUpdate'] })
Plug 'kchmck/vim-coffee-script'
Plug('neoclide/coc.nvim', { branch = 'release' })
Plug 'nvim-lualine/lualine.nvim'
Plug('akinsho/bufferline.nvim', { tag = 'v3.*' })
Plug 'vim-scripts/BufOnly.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug('iamcco/markdown-preview.nvim', { ['do'] = vim.fn['cd app && yarn install'] })
Plug 'rose-pine/neovim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'lukas-reineke/indent-blankline.nvim'

vim.call('plug#end')
