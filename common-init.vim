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


" PowerShell
let &shell = has('win32') ? 'powershell' : 'pwsh'
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
let &shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait'
let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
set shellquote= shellxquote=


runtime plugins.vim
runtime mappings.vim
runtime variables.vim
runtime themes.vim

lua require('plugins')


if exists(':GuiFont')
  GuiFont! FiraCode Nerd Font:h10
endif


function! Dos2Unix()
  :%s/\r//ge
  :set ff=unix
  :w
endfunction


" VimWiki requires these
set nocompatible
filetype plugin on
filetype indent off
syntax on


" Auto-update configs
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &
