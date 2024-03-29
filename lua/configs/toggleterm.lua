require("toggleterm").setup{
  size = 10,
  open_mapping = [[<F7>]],
  shading_factor = 2,
  direction = "float",
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
}

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit" })

function _lazygit_toggle()
  lazygit:toggle()
end


-- Mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>g', '<cmd>lua _lazygit_toggle()<CR>', opts)
map('n', '<leader>tf', '<cmd>ToggleTerm float<CR>', opts)
