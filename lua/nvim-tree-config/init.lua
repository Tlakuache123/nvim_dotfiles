require("nvim-tree").setup({
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
