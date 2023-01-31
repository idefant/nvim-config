local close_func = function(bufnum)
  local bufdelete_avail, bufdelete = pcall(require, "bufdelete")
  if bufdelete_avail then
    bufdelete.bufdelete(bufnum, true)
  else
    vim.cmd.bdelete { args = { bufnum }, bang = true }
  end
end


require("bufferline").setup{
  options = {
    offsets = {
      { filetype = "NvimTree", text = "File Explorer", padding = 1 },
      { filetype = "vista", text = "Tags", padding = 1 },
      { filetype = "vista_markdown", text = "TOC", padding = 1 },
    },
    separator_style = "slant",
    close_command = close_func,
    right_mouse_command = close_func,
  }
}


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>c', '<cmd>:Bdelete<CR>', opts)
map('n', '<leader>C', '<cmd>:Bdelete!<CR>', opts)

map('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>', opts)
map('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>', opts)
map('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>', opts)
map('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>', opts)
map('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>', opts)
map('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<CR>', opts)
map('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<CR>', opts)
map('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<CR>', opts)
map('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<CR>', opts)
map('n', '<leader>$', '<cmd>BufferLineGoToBuffer -1<CR>', opts)

map('n', '<C-S-.>', '<cmd>BufferLineMoveNext<CR>', opts)
map('n', '<C-S-,>', '<cmd>BufferLineMovePrev<CR>', opts)

map('n', '<C-.>', '<cmd>BufferLineCycleNext<CR>', opts)
map('n', '<C-,>', '<cmd>BufferLineCyclePrev<CR>', opts)

