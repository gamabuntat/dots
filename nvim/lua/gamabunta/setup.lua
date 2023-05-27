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
vim.o.sw = 2
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

-- statusline
local get_file_path = function()
    local path = vim.api.nvim_exec("echo expand('%')", true)
    -- print(vim.api.nvim_exec("echo fnamemodify(expand('%'), ':~:.')", true))
    if string.len(path) == 0 then
        return '[No Name]'
    end
    local winwidth = vim.api.nvim_exec("echo winwidth(0)", true)
    return string.len(path) > winwidth / 1.7 and "%{pathshorten(expand('%'))}" or "%f"
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

-- prettier
-- vim.api.nvim_exec(
--   [[
--     :command -nargs=1 Pcli :PrettierCli --config ~/.prettierrc --write <args>
--   ]],
--   false
-- )
vim.api.nvim_set_var('prettier#exec_cmd_path',
    '/usr/local/lib/node_modules/prettier/bin-prettier.js')
vim.api.nvim_set_var('prettier#config#parser', 'typescript')
