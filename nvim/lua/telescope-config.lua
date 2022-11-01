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

require('telescope').load_extension('fzf')
