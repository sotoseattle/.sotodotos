return {
  "vim-test/vim-test",
  dependencies = { "preservim/vimux" },
  vim.keymap.set('n', '<Leader>tf', ':TestFile<CR>', {}),
  vim.keymap.set('n', '<Leader>tu', ':TestNearest<CR>', {}),
  vim.keymap.set('n', '<Leader>tl', ':TestLast<CR>', {}),
  vim.keymap.set('n', '<Leader>ta', ':TestSuite<CR>', {}),
  vim.cmd("let test#strategy = 'vimux'")
}
