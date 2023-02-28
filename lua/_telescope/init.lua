local status, telescope = pcall(require, "telescope")
if(not status) then return end
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup {
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close
            }
        }
    }
}

local keymap = vim.keymap

keymap.set('n', ';f', function ()
    builtin.find_files({
        no_ignore = false,
        hidden = true
    })
end)

keymap.set('n', ';r', function ()
    builtin.live_grep()
end)

keymap.set('n', '\\\\', function ()
    builtin.buffers()
end)

keymap.set('n', ';t', function ()
    builtin.help_tags()
end)

keymap.set('n', ';;', function ()
    builtin.resume()
end)

keymap.set('n', ';e', function ()
    builtin.diagnostics()
end)
