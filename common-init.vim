set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set mouse=a
set encoding=UTF-8
set spell
set spelllang=ru_ru,en_us
set linebreak
set termguicolors

let mapleader = ' '

runtime plugins.vim
runtime mappings.vim
runtime variables.vim
runtime themes.vim

lua require('plugins')

if exists(':GuiFont')
  GuiFont! FiraCode Nerd Font:h10
endif


" VimWiki requires these
set nocompatible
filetype plugin on
filetype indent off
syntax on


" Auto-update configs
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &
