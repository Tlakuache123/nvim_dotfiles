local status, mason = pcall(require, "mason")
if(not status) then return end

local status2, lspconfig = pcall(require, "mason-lspconfig")
if(not status2) then return end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

lspconfig.setup({
    ensure_installed = {"sumneko_lua", "tsserver", "clangd", "pyright", "tailwindcss"}
})

local lsp = require "lspconfig"

local servers = {
    "clangd",
    "sumneko_lua",
    "tsserver",
    "pyright",
    "tailwindcss"}

for _, server in ipairs(servers) do
    lsp[server].setup{}
end
