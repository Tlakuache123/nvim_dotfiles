local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

vim.g.mapleader = " "

map('n', '<Leader>nt', ':NvimTreeToggle<CR>', opt)
map('n', '<Leader>w', ':w<CR>', opt)
map('n', '<Leader>q', ':q<CR>', opt)
