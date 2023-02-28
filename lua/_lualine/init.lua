require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		section_separators = { left = "", right ="" },
	},
	sections = {
		lualine_b = { "branch" },
		lualine_c = { "diff", "diagnostics", "filename" },
		lualine_x = { "filetype" },
	},
	extensions = { "nvim-tree" },
})
