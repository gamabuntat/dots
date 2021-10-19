return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  use 'dense-analysis/ale'
  
  use { 
    'ibhagwan/fzf-lua',
    requires = { 'vijaymarupudi/nvim-fzf' }
  }

  use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-ts-autotag'
end)
