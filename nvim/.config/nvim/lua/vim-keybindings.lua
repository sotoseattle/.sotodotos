vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.swapfile = false

-- Navigate panes like with Tmux
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = "#9C1D1D"})
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = "#07793C"})

vim.keymap.set('n', '<C-n>', ':bnext<CR>')
vim.keymap.set('n', '<C-p>', ':bprevious<CR>')
vim.keymap.set('n', '<C-d>', ':bdelete<CR>')


vim.cmd("set guicursor=n-v-c:block")
vim.cmd("set guicursor=i-ci:ver30")
vim.cmd("set relativenumber")
vim.cmd("set nu")
vim.cmd("set hidden")
vim.cmd("set smartindent")
vim.cmd("set showmatch")
vim.cmd("set incsearch")
vim.cmd("set mouse=a")
vim.cmd("set scrolloff=6")
vim.cmd("set colorcolumn=80")
vim.cmd("set signcolumn=yes")
vim.cmd("set splitbelow")
vim.cmd("set splitright")

vim.cmd("set noshowmode")

vim.g.mapleader = " "
