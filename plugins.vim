call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'rafi/awesome-vim-colorschemes'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Plug 'majutsushi/tagbar'
" Plug 'lvht/tagbar-markdown'
Plug 'liuchengxu/vista.vim'

Plug 'lyokha/vim-xkbswitch'

" Plug 'tpope/vim-markdown'
Plug 'plasticboy/vim-markdown'

Plug 'tibabit/vim-templates'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
