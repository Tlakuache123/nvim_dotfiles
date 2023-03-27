return require("packer").startup(function(use)
	-- Core plugins
	use("wbthomason/packer.nvim")
	use("nvim-lualine/lualine.nvim")
	use({ "akinsho/bufferline.nvim", tag = "v3.*" })
	use("tiagovla/scope.nvim")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
	})
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	-- Setting up cmp
	use({
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"onsails/lspkind-nvim",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	})
	-- Lsp Saga
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	-- Autoclose tags
	use({
		"windwp/nvim-ts-autotag",
		"windwp/nvim-autopairs",
	})
	-- Prettier
	use({
		"sbdchd/neoformat",
	})
	-- Git
	use({
		"lewis6991/gitsigns.nvim",
	})

	-- Colorscheme
	use("EdenEast/nightfox.nvim")
  use("folke/tokyonight.nvim")
end)
