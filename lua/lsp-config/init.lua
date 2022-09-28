require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
    ensure_installed = {"sumneko_lua", "tsserver", "clangd", "pyright"}
})

local lsp = require "lspconfig"

vim.g.coq_settings = {
    ["auto_start"] = "shut-up",
    ["display.icons.mode"] = "short",
    ["display.icons.spacing"] = 1,
    ["display.pum.kind_context"] = {"[", "]"}, -- icons 
    ["display.pum.source_context"] = {"「", "」"} -- source
}

local coq = require "coq"

local servers = {
    "clangd",
    "sumneko_lua",
    "tsserver",
    "pyright",
    "tailwindcss"}

for _, server in ipairs(servers) do
    lsp[server].setup(coq.lsp_ensure_capabilities())
end
