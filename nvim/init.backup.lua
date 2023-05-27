-- COLORS
-- vim.cmd 'colo NeoSolarized'
-- vim.cmd 'colo tender'
-- vim.cmd 'colo blue-mood'
-- vim.cmd 'colo cosmic_latte'
-- vim.cmd 'colo spacecamp'
-- vim.g.tokyonight_transparent = true
-- vim.cmd[[colorscheme tokyonight]]
-- vim.cmd 'colorscheme solarized'
-- vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
-- vim.cmd [[colorscheme catppuccin]]
-- local everblush = require('everblush')
-- vim.cmd [[colorscheme everblush]]
vim.cmd 'colo truedark'
-- vim.cmd 'colo kanagawa'
-- vim.cmd 'colo darkplus'

-- local success, solarized = pcall(require, 'solarized')
-- local config = {
--   mode = 'light', -- dark(default)/light
--   theme = 'neovim',
-- }
-- solarized.setup(config)
-- vim.cmd 'colorscheme solarized'

require('plugins')
-- CONFIGS
-- require('fzf-config')
-- require('diffview-config')
require('autotag-config')
-- require('nvim-ts-autotag').setup({
--   filetypes = { "html" , "xml", "javascriptreact", "typescriptreact", "tsx", "typescript.tsx" },
-- })
require('cmp-config')
require('ale-config')
require('kommentary-config')
require('treesitter-config')
require('stay-centered')
require('telescope-config')
-- require('prettier-config')
require('gitblame-config')
require('lsp-config')
require("symbols-outline").setup()

require('nvim-autopairs').setup()

-- SETUP
local so = vim.api.nvim_set_option

so('bk', false)
so('wb', false)
so('swf', false)
so('cot', 'menu,menuone,noselect')
so('clipboard', 'unnamedplus')
so('updatetime', 100)
so('ttimeoutlen', 10)
so('bg', 'dark')
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
vim.o.smartcase = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.laststatus = 3

local get_file_path = function()
    local path = vim.api.nvim_exec("echo expand('%')", true)
    -- print(vim.api.nvim_exec("echo fnamemodify(expand('%'), ':~:.')", true))
    if string.len(path) == 0 then
        return '[No Name]'
    end
    local winwidth = vim.api.nvim_exec("echo winwidth(0)", true)
    return string.len(path) > winwidth / 1.5 and "%{pathshorten(expand('%'))}" or "%f"
end


function Status_line()
    return table.concat({
        get_file_path(),
        -- "%f",
        "%m",
        "%=",
        "%y",
        "[%{&fileformat}]",
        "%P",
        "%l"
    }, ' ')
end

-- vim.o.stl = "%f %m %= %y [%{&fileformat}] %P %l"
-- vim.o.stl = "%{len(expand('%'))>(winwidth(0)*0.75)?pathshorten(expand('%')):expand('%')} %m %= %y [%{&fileformat}] %P %l"
vim.o.stl = "%!luaeval('Status_line()')"
-- vim.o.bg = 'light'
-- vim.o.number = false
-- vim.o.rnu = true
-- vim.call('matchadd', 'WarningMsg', "\\%81v", 3)
require 'colorizer'.setup()

-- prettier
vim.api.nvim_exec(
    [[
  :command -nargs=1 Pcli :PrettierCli --config ~/.prettierrc --write <args>
  ]],
    false
)
vim.api.nvim_set_var('prettier#exec_cmd_path',
    '~/.local/share/nvim/site/pack/packer/start/vim-prettier/node_modul es/.bin/prettier')
vim.api.nvim_set_var('prettier#config#parser', 'typescript')

-- MAPPINGS
local sk = vim.api.nvim_set_keymap

-- duck
vim.keymap.set('n', '<leader>dd', function() require("duck").hatch() end, {})
vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})

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
sk('n', '<leader>f', ':Explore<CR>', { noremap = false, silent = true })
sk('x', '<Leader>p', '\"_dP', { noremap = false, silent = false })

-- fzf
-- sk('n', ',t', ':Files<CR>', { noremap = true, silent = true })
-- sk('n', "'", ':Buffers<CR>', { noremap = true, silent = true })
-- sk('n', "<leader>m", ':Marks<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_var('fzf_preview_window', {})

-- telescope
sk('n', '<Leader>o', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
sk('n', '<Leader>,t', ':Telescope find_files hidden=true<CR>', { noremap = true, silent = true })
sk('n', ',t', ':Telescope find_files<CR>', { noremap = true, silent = true })
sk('n', "'", ':Telescope buffers --sort=get_fzy_sorter<CR>', { noremap = true, silent = true })

-- trouble
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
    { silent = true, noremap = true }
)

-- emmit
vim.api.nvim_set_var('user_emmet_leader_key', '<C-A>')

-- line
-- vim.api.nvim_set_var('lightline', {
--   colorscheme = 'nord',
--   active = {
--     left = {
--       { 'readonly', 'filename' },
--       {},
--     },
--     right = {
--       { 'percent', 'lineinfo' },
--       { 'filetype' }
--     },
--   },
--   separator = { left = '▓▒░', right = '░▒▓' },
--   subseparator = { left = '▒', right = '░' }
-- })

vim.api.nvim_set_keymap("n", "<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
    { noremap = true, silent = true, expr = false })
