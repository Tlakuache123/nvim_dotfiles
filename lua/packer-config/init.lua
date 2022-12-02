return require("packer").startup(function()
	-- Packer manage itself
	use("wbthomason/packer.nvim")
	use("EdenEast/nightfox.nvim") -- Colorsheme
  use ("ellisonleao/gruvbox.nvim")
	use("folke/tokyonight.nvim") -- Colorsheme
	use("lukas-reineke/indent-blankline.nvim") -- Blanklike
	use({
		"kyazdani42/nvim-tree.lua", -- Tree
		requires = { "kyazdani42/nvim-web-devicons", opt = false }, -- icons
	})
	use("nvim-lualine/lualine.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
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
	-- Zen mode
	use({
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup({
				kitty = {
					enabled = true,
					font = "+4", -- font size increment
				},
			})
		end,
	})
end)
