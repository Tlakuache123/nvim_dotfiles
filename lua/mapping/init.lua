local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

vim.g.mapleader = " "

map('n', '<Leader>nt', ':NvimTreeToggle<CR>', opt)
map('n', '<Leader>nc', ':NvimTreeClose<Cr>', opt)
map('n', '<Leader>nf', ':NvimTreeFocus<Cr>', opt)
map('n', '<Leader>w', ':w<CR>', opt)
map('n', '<Leader>q', ':q<CR>', opt)
map('n', '<C-J>', '<C-W><C-J>', opt)
map('n', '<C-K>', '<C-W><C-K>', opt)
map('n', '<C-L>', '<C-W><C-L>', opt)
map('n', '<C-H>','<C-W><C-H>', opt)
