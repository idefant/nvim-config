vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use "goolord/alpha-nvim"

  use 'nvim-tree/nvim-web-devicons'

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  }

  use 'lewis6991/gitsigns.nvim'
  use "lukas-reineke/indent-blankline.nvim"

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  require "smart-splits"
  require "configs.neo-tree"
  require "configs.gitsigns"
  require "configs.alpha"
  require "configs.indent-blankline"
  require "configs.toggleterm"
end)

