local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	ensure_installed = {
		"c",
		"lua",
		"javascript",
		"python",
		"html",
		"tsx",
		"json",
		"css",
		"rasi",
	},
	sync_install = true,
	auto_install = true,

	highlight = {
		enable = true,
		disable = {},
	},

	indent = {
		enable = true,
		disable = {},
	},

	autotag = {
		enable = true,
	},
	additional_vim_regex_highlighting = { "rasi" },
})

local parse_config = require("nvim-treesitter.parsers").get_parser_configs()
parse_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
