require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'javascript', 'typescript' },
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = false,
    disable = { "" },
  },
  indent = {
    enable = true
  }
}
