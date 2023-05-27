return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- use 'nvim-treesitter/nvim-treesitter-context'

    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'

    use 'dense-analysis/ale'

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- use 'ThePrimeagen/harpoon'


    -- use {
    --   'junegunn/fzf',
    --   requires = { 'junegunn/fzf.vim' }
    -- }

    -- use 'sindrets/diffview.nvim'
    use 'tpope/vim-fugitive'
    -- git
    use 'f-person/git-blame.nvim'

    use 'mattn/emmet-vim'

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    -- use 'jiangmiao/auto-pairs'
    use 'windwp/nvim-ts-autotag'
    -- use 'ap/vim-css-color'
    -- use 'tpope/vim-commentary'
    use 'norcalli/nvim-colorizer.lua'
    use 'b3nj5m1n/kommentary'
    use 'tpope/vim-surround'
    -- use 'Yggdroot/indentLine'
    use 'digitaltoad/vim-pug'
    use 'arnamak/stay-centered.nvim'

    -- prettier
    use 'prettier/vim-prettier'

    use 'simrat39/symbols-outline.nvim'

    -- use 'itchyny/lightline.vim'

    -- javascript
    -- use 'pangloss/vim-javascript'
    -- use 'peitalin/vim-jsx-typescript'
    -- use 'MaxMEllon/vim-jsx-pretty'

    --colorschemes
    -- use 'folke/tokyonight.nvim'
    -- use 'jaredgorski/spacecamp'
    -- use({
    --   'catppuccin/nvim',
    --   as = "catppuccin"
    -- })
    -- use 'martinsione/darkplus.nvim'
    -- use 'NLKNguyen/papercolor-theme'
    -- use 'maxmx03/solarized.nvim'
    -- use 'jabuti-theme/jabuti-nvim'
    -- use 'sainnhe/sonokai'
    -- use 'tanvirtin/monokai.nvim'
    -- use {
    --   "mcchrish/zenbones.nvim",
    --   -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    --   -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    --   -- In Vim, compat mode is turned on as Lush only works in Neovim.
    --   requires = "rktjmp/lush.nvim"
    -- }
    -- use { 'Everblush/everblush.nvim', as = 'everblush' }

    use "rebelot/kanagawa.nvim"


    --haskell???
    -- use 'neovimhaskell/haskell-vim'

    -- use 'purescript-contrib/purescript-vim'

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                position = "bottom",
                use_diagnostic_signs = false
            }
        end
    }

    -- use 'tamton-aquib/duck.nvim'
    -- use {
    --     "ThePrimeagen/refactoring.nvim",
    --     requires = {
    --         { "nvim-lua/plenary.nvim" },
    --         { "nvim-treesitter/nvim-treesitter" }
    --     }
    -- }
end)
