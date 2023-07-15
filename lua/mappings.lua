local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- Window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)


-- Resize with arrows
map('n', '<C-Up>', '<cmd>resize -2<CR>', opts)
map('n', '<C-Down>', '<cmd>resize +2<CR>', opts)
map('n', '<C-Left>', '<cmd>vertical resize -2<CR>', opts)
map('n', '<C-Right>', '<cmd>vertical resize +2<CR>', opts)


-- Create split
map('n', '<leader>|', '<cmd>vsplit<cr>', opts)
map('n', '<leader>\\', '<cmd>split<cr>', opts)


-- Standard Operations
map('n', '<leader>fn', '<cmd>enew<cr>', opts)
map('n', '<leader>s', '<cmd>w<cr>', opts)
map('n', '<leader>q', '<cmd>q<cr>', opts)
map('n', '<C-S-q>', '<cmd>qa<cr>', opts)


-- Keyboard layout switching
map('i', '<A-m>', '<C-^>', opts)

