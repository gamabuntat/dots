vim.keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true })
vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })
vim.keymap.set('v', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('v', 'k', 'gk', { noremap = true, silent = true })
vim.keymap.set('n', ',<space>', ':nohlsearch<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-J>', '<C-W>j', { noremap = false, silent = true })
vim.keymap.set('n', '<C-K>', '<C-W>k', { noremap = false, silent = true })
vim.keymap.set('n', '<C-H>', '<C-W>h', { noremap = false, silent = true })
vim.keymap.set('n', '<C-L>', '<C-W>l', { noremap = false, silent = true })
vim.keymap.set('n', '=', '<C-W>=', { noremap = false, silent = true })
vim.keymap.set('n', '+', '<C-W>+', { noremap = false, silent = true })
vim.keymap.set('n', '-', '<C-W>-', { noremap = false, silent = true })
vim.keymap.set('n', '<M-w>', ':bd!<CR>', { noremap = false, silent = true })
vim.keymap.set('n', '<leader>f', ':Explore<CR>', { noremap = false, silent = true })
vim.keymap.set('x', '<Leader>p', '\"_dP', { noremap = false, silent = false })

-- git-blame
vim.api.nvim_set_var('gitblame_enabled', 0)
vim.keymap.set("n", "<leader>b", "<cmd>GitBlameToggle<cr>", {silent = true, noremap = true})

-- emmit
vim.api.nvim_set_var('user_emmet_leader_key', '<C-A>')
