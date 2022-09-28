return require('packer').startup(function()
    -- Packer manage itself
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim' -- Colorsheme
    use {
        'kyazdani42/nvim-tree.lua', -- Tree
        requires = { 'kyazdani42/nvim-web-devicons', opt = false} -- icons
    }
    use 'nvim-lualine/lualine.nvim'
    use {
        'ms-jpq/coq_nvim', branch = 'coq',
        requires = {'ms-jpq/coq.artifacts', branch = 'artifacts'}
    }
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
end)
