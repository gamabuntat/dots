vim.keymap.set('n', '<Leader>o', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>,t', ':Telescope find_files hidden=true<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ',t', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', "'", ':Telescope buffers --sort=get_fzy_sorter<CR>', { noremap = true, silent = true })

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-u>"] = false,
      },
    },
  },
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
    },
    buffers = {
      ignore_current_buffer = true,
      sort_mru = true,
      sort_lastused = true,
    },
  },
}

