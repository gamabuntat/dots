-- COLORS
-- vim.cmd 'colo fogbell_light'
vim.cmd 'colo NeoSolarized'
-- vim.cmd 'colo 256_noir'
-- vim.cmd 'colo spacecamp'
-- vim.cmd 'colo PaperColor'
-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_transparent = true
-- vim.cmd[[colorscheme tokyonight]]
-- local catppuccin = require("catppuccin")
-- catppuccin.setup({
--     transparent_background = true,
-- })
-- vim.cmd[[colorscheme catppuccin]]

require('plugins')
-- CONFIGS
-- require('fzf-config')
-- require('diffview-config')
require('autotag-config')
-- require('nvim-ts-autotag').setup({
--   filetypes = { "html" , "xml", "javascriptreact", "typescriptreact", "tsx", "typescript.tsx" },
-- })
require('lsp-config')
require('cmp-config')
require('ale-config')
require('kommentary-config')
require('treesitter-config')
require('stay-centered')
-- require('prettier-config')

-- SETUP
local so = vim.api.nvim_set_option

so('bk', false)
so('wb', false)
so('swf', false)
so('cot', 'menu,menuone,noselect')
so('clipboard', 'unnamedplus')
so('updatetime', 100)
so('ttimeoutlen', 10)
-- so('bg', 'light')
-- vim.o.spelllang = 'en'
-- vim.o.sps = 'best, 9'
vim.o.expandtab = true
vim.o.sw = 4
-- vim.o.tabstop = 4
vim.o.sts = 0
vim.o.list = true
vim.o.signcolumn = 'no'
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.termguicolors = true
-- vim.o.cursorline = true
-- vim.o.number = false
-- vim.o.rnu = true
vim.call('matchadd', 'WarningMsg', "\\%81v", 3)

-- prettier
vim.api.nvim_exec(
  [[
  :command -nargs=1 Pcli :PrettierCli --config ~/.prettierrc --write <args>
  ]],
  false
)
vim.api.nvim_set_var('prettier#exec_cmd_path', '~/.local/share/nvim/site/pack/packer/start/vim-prettier/node_modul es/.bin/prettier')
vim.api.nvim_set_var('prettier#config#parser', 'typescript')

-- MAPPINGS
local sk = vim.api.nvim_set_keymap

sk('i', 'jj', '<ESC>', { noremap = true, silent = true })
sk('n', 'j', 'gj', { noremap = true, silent = true })
sk('n', 'k', 'gk', { noremap = true, silent = true })
sk('v', 'j', 'gj', { noremap = true, silent = true })
sk('v', 'k', 'gk', { noremap = true, silent = true })
sk('n', ',<space>', ':nohlsearch<CR>', { noremap = true, silent = true })
sk('n', '<C-J>', '<C-W>j', { noremap = false, silent = true })
sk('n', '<C-K>', '<C-W>k', { noremap = false, silent = true })
sk('n', '<C-H>', '<C-W>h', { noremap = false, silent = true })
sk('n', '<C-L>', '<C-W>l', { noremap = false, silent = true })
sk('n', '=', '<C-W>=', { noremap = false, silent = true })
sk('n', '+', '<C-W>+', { noremap = false, silent = true })
sk('n', '-', '<C-W>-', { noremap = false, silent = true })
sk('n', '<M-w>', ':bd!<CR>', { noremap = false, silent = true }) 

-- fzf
sk('n', ',t', ':Files<CR>', { noremap = true, silent = true })
sk('n', "'", ':Buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_var('fzf_preview_window', 'right:50%:bottom')

-- emmit
vim.api.nvim_set_var('user_emmet_leader_key', '<C-A>')
