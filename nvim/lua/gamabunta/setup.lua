local so = vim.api.nvim_set_option

so('bk', false)
so('wb', false)
so('swf', false)
so('cot', 'menu,menuone,noselect')
so('clipboard', 'unnamedplus')
so('updatetime', 100)
so('ttimeoutlen', 10)
so('bg', 'dark')
vim.o.expandtab = true
vim.o.sw = 4
-- vim.o.tabstop = 4
vim.o.sts = 0
vim.o.list = true
vim.o.signcolumn = 'no'
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.laststatus = 3
