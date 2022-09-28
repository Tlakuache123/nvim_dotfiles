return require('packer').startup(function()
    -- Packer manage itself
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim' -- Colorsheme
    use {
        'kyazdani42/nvim-tree.lua', -- Tree
        requires = { 'kyazdani42/nvim-web-devicons', opt = false} -- icons
    }
    use 'nvim-lualine/lualine.nvim'
    use{
        'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'
    }
    use {'dsznajder/vscode-es7-javascript-react-snippets',
        run = 'yarn install --frozen-lockfile && yarn compile'
    }
    use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    }
    -- Setting up cmp
    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
        'onsails/lspkind-nvim',
    }

    use "glepnir/lspsaga.nvim"
    -- Autoclose tags
    use {
        'windwp/nvim-ts-autotag',
        'windwp/nvim-autopairs',
    }
    -- Prettier
    use {
        'jose-elias-alvarez/null-ls.nvim',
        'MunifTanjim/prettier.nvim',
    }
    -- Git
    use {
        'lewis6991/gitsigns.nvim'
    }
    -- Finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "v2.*"}
end)
