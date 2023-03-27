local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
	return
end

nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }
    }
})

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end
