vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorescheme
  use 'cocopon/iceberg.vim'

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons' }

  -- Nvim tree
  use {'nvim-tree/nvim-tree.lua', 
  requires = 'nvim-tree/nvim-web-devicons',
    tag = "nightly"
  }

  -- autotag, rainbow, autopairs
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
end)
