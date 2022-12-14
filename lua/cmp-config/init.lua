local has_words_before = function ()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1,line, true)[1]:sub(col,col):match("%s") == nil
end

local status,cmp = pcall(require, "cmp")
if (not status) then return end

local status2,luasnip = pcall(require,'luasnip')
if not(status2) then return end

local lspkind = require 'lspkind'
require 'luasnip.loaders.from_vscode'.lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({
            select = true
        }),
        --[[["<Tab>"] = cmp.mapping(function (fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jumpable()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
        else
            fallback()
            end
        end, { "i", "s" }),]]--
    }),
    sources = cmp.config.sources({
        {name = 'nvim_lsp'},
        {name = 'buffer'},
        {name = 'luasnip'},
        {name = 'path'},
    }),
    formatting = {
        format = lspkind.cmp_format({ with_text = true, maxwidth = 50})
    },
    experiment = {
        ghost_text = true
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp = require "lspconfig"

local servers = {
    "clangd",
    "sumneko_lua",
    "tsserver",
    "pyright",
    "tailwindcss",
    "rust_analyzer"
}

for _, server in ipairs(servers) do
    lsp[server].setup{ capabilities = capabilities }
end
