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

local signs = {
  Error = '' .. ' ',
  Warn = '' .. ' ',
  Hint = '' .. ' ',
  Info = '' .. ' ',
}

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end
