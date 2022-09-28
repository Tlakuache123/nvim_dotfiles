require 'nvim-treesitter.configs'.setup{
    ensure_installed = {"c", "lua", "javascript", "python", "html", "typescript"},
    sync_install = true,
    auto_install = true,

    highlight = {
       enable = true 
    }
}
