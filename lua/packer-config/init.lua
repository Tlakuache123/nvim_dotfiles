return require("packer").startup(function()
	-- Packer manage itself
	use("wbthomason/packer.nvim")
	-- Colorschemes
	use("EdenEast/nightfox.nvim")
	use("folke/tokyonight.nvim")
	use("tiagovla/tokyodark.nvim")
	-- Blankline
	use("lukas-reineke/indent-blankline.nvim")
	-- Nvim tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons", opt = false },
	})
	-- Status line
	use("nvim-lualine/lualine.nvim")
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
	-- Finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- Bufferline
	use({ "akinsho/bufferline.nvim", tag = "v2.*" })
end)
