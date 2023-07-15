local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', '?', api.tree.toggle_help, opts('help'))
end

require("nvim-tree").setup{
  view = {
    width = 40,
  },
  on_attach = on_attach,
}


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>e', '<cmd>:NvimTreeToggle<CR>', opts)
