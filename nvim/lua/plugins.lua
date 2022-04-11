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
  
  -- use { 
  --   'ibhagwan/fzf-lua',
  --   requires = { 'vijaymarupudi/nvim-fzf' }
  -- }

  use {
    'junegunn/fzf',
    requires = { 'junegunn/fzf.vim' }
  }

  -- use 'sindrets/diffview.nvim'
  use 'tpope/vim-fugitive'

  use 'mattn/emmet-vim'

  use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-ts-autotag'
  -- use 'ap/vim-css-color'
  -- use 'tpope/vim-commentary'
  use 'b3nj5m1n/kommentary'
  use 'tpope/vim-surround'
  -- use 'Yggdroot/indentLine'
  use 'digitaltoad/vim-pug'
  use 'arnamak/stay-centered.nvim'

  -- prettier
  use 'prettier/vim-prettier'

  -- javascript
  -- use 'pangloss/vim-javascript'
  -- use 'peitalin/vim-jsx-typescript'
  -- use 'MaxMEllon/vim-jsx-pretty'

  --colorschemes
  use 'folke/tokyonight.nvim'
  use 'jaredgorski/spacecamp'
  use({
    'catppuccin/nvim',
    as = "catppuccin"
  })
  use 'NLKNguyen/papercolor-theme'
  use 'shaunsingh/solarized.nvim'

  --haskell???
  use 'neovimhaskell/haskell-vim'

end)
