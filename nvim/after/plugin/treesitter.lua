require('nvim-treesitter.configs').setup {
  auto_intall = true,
  ensure_installed = { 'javascript', 'typescript', 'lua' },
  sync_install = false,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
}

