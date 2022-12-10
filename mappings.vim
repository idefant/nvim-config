" Escape
imap <C-space> <Esc>


" Fix jk on long lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'


" Alpha
noremap <leader>af <cmd>Alpha<CR>


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


" NerdTree
nnoremap <leader>e :Neotree toggle .<CR>


" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Move lines up-down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" Markdown links
" nnoremap <leader>ml <cmd>ciw[<C-r>"](<Esc>"*pa)<Esc>
" vnoremap <leader>ml <cmd>c[<C-r>"](<Esc>"*pa)<Esc>


" Vista
nmap <C-b> :Vista<CR>
