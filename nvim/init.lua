-- COLORS
-- vim.cmd 'colo fogbell_light'
vim.cmd 'colo fogbell'

require('plugins')
-- CONFIGS
require('fzf-config')
require('autotag-config')
require('lsp-config')
require('cmp-config')
require('ale-config')

-- SETUP
local so = vim.api.nvim_set_option

so('bk', false)
so('wb', false)
so('swf', false)
so('cot', 'menu,menuone,noselect')
so('clipboard', 'unnamedplus')
so('expandtab', true)
so('sw', 2)
so('tabstop', 2)
so('sts', 0)
so('laststatus', 2)
so('shiftwidth', 2)
so('updatetime', 100)
so('ttimeoutlen', 10)
vim.o.signcolumn = 'no'
vim.o.hidden = true
vim.o.number = true
vim.o.rnu = true
vim.call('matchadd', 'ColorColumn', "\\%81v", 3)
  
-- MAPPING
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

