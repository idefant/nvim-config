vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "goolord/alpha-nvim"
  use 'nvim-tree/nvim-web-devicons'
  use 'echasnovski/mini.move'
  use {'akinsho/bufferline.nvim', tag = "v3.*"}
  use 'nvim-tree/nvim-tree.lua'
  use 'lewis6991/gitsigns.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use {"akinsho/toggleterm.nvim", tag = '*'}
  use 'nvim-lualine/lualine.nvim'
  use 'famiu/bufdelete.nvim'
  use 'rcarriga/nvim-notify'

  require "mappings"
  require "configs.nvim-tree"
  require "configs.gitsigns"
  require "configs.alpha"
  require "configs.indent-blankline"
  require "configs.toggleterm"
  require "configs.mini-move"
  require "configs.bufferline"
  require "configs.lualine"
  require "configs.vimwiki"
end)

