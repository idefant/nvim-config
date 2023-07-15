" VimWiki
let g:vimwiki_list = [
  \ { 'path': '~/ABOUT_ME/wiki/', 'syntax': 'markdown', 'ext': '.md', 'auto_tags': 1 },
  \ { 'path': '~/ABOUT_ME/notes', 'syntax': 'markdown', 'ext': '.md', 'auto_tags': 1 }
\ ]
let g:vimwiki_auto_chdir = 1


" vim-markdown
let g:vim_markdown_folding_disabled = 1


" Theme
let g:gruvbox_contrast_dark = 'hard'


" Vista
let g:vista_sidebar_width = 50
let g:vista_cursor_delay = 0
let g:vista_default_executive = 'coc'
let g:vista_highlight_whole_line = 1
let g:vista_update_on_text_changed = 1
let g:vista_executive_for = {
  \ 'vimwiki': 'markdown',
  \ 'markdown': 'toc',
  \ }
