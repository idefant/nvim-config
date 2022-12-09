local map = vim.api.nvim_set_keymap


-- Window navigation
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })


-- Resize with arrows
map('n', '<C-Up>', '<cmd>resize -2<CR>', { noremap = true, silent = true })
map('n', '<C-Down>', '<cmd>resize +2<CR>', { noremap = true, silent = true })
map('n', '<C-Left>', '<cmd>vertical resize -2<CR>', { noremap = true, silent = true })
map('n', '<C-Right>', '<cmd>vertical resize +2<CR>', { noremap = true, silent = true })

