local status, bufferline = pcall(require, "bufferline")
if(not status) then return end

bufferline.setup({})

local keymap = vim.keymap

keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
