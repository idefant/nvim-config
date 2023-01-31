" Escape
imap <C-;> <Esc>
imap <C-ж> <Esc>


" dos2unix
nnoremap <C-S-r> :call Dos2Unix()<CR>


" Fix jk on long lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'


" Edit config
function! OpenNeovimConfig()
  cd ~/AppData/Local/nvim/
  edit ginit.vim
endfunction


" Copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa


" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Markdown links
" nnoremap <leader>ml <cmd>ciw[<C-r>"](<Esc>"*pa)<Esc>
" vnoremap <leader>ml <cmd>c[<C-r>"](<Esc>"*pa)<Esc>


" Vista
nmap <leader>v <cmd>Vista!!<CR>


" Commentary
nnoremap <leader>/ <cmd>Commentary<cr>
xmap <leader>/ <Plug>Commentary
omap <leader>/ <Plug>Commentary
