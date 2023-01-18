" Escape
imap <C-;> <Esc>
imap <C-ж> <Esc>


" Tab navigation
nnoremap ]t <cmd>tabnext<cr>
nnoremap [t <cmd>tabprevious<cr>
nnoremap <leader>nt <cmd>tabnew<cr>


" Fix jk on long lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'


" Alpha
noremap <leader>d <cmd>Alpha<CR>


" Edit config
function! OpenNeovimConfig()
  cd ~/AppData/Local/nvim/
  edit ginit.vim
endfunction
nmap <leader>cc :call OpenNeovimConfig()<CR>


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
nmap <C-b> :Vista<CR>


" ToggleTerm
nnoremap <leader>tf <cmd>ToggleTerm float<CR>


" Commentary
nnoremap <leader>/ <cmd>Commentary<cr>
xmap <leader>/ <Plug>Commentary
omap <leader>/ <Plug>Commentary
