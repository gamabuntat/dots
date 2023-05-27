vim.api.nvim_set_var('gitblame_enabled', 0)
vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>GitBlameToggle<cr>", {silent = true, noremap = true})
