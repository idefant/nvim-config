local notify = require('notify')

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local expand = vim.fn.expand
local setreg = vim.fn.setreg

local plugin = 'VimWiki (Extended)'

function _G.VimwikiCopyFilename()
  local filename = expand('%:r')
  setreg('*', filename)
  notify('Filename "' .. filename .. '" was successfully copied', 'info', { title = plugin })
end

augroup('VimwikiCopyFilename', { clear = true })
autocmd('Filetype', {
  group = 'VimwikiCopyFilename',
  pattern = {'vimwiki'},
  callback = function()
    map('n', '<leader>wf', ':lua VimwikiCopyFilename()<CR>', opts)
  end
})
