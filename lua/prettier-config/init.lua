local status, null_ls = pcall(require, "null_ls")
if(not status) then return end

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint_d.with({
            diagnostics_format = "[eslint] #m\n(#{c})"
        }),
        null_ls.builtins.diagnostics.fish
    }
})

local status2, prettier = pcall(require, "prettier")
if (not status2) then return end

prettier.setup{
    bin = "prettierd",
    filetypes = {
        "css",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "json",
        "scss",
        "less",
    }
}
