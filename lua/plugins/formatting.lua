return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")
        local b = null_ls.builtins

        null_ls.setup({
            sources = {
                b.formatting.stylua,
                b.formatting.black,
                b.formatting.isort,
                b.diagnostics.credo,
                b.code_actions.gitrebase,
                b.code_actions.gitsigns,
            },
            on_attach = function(client, _)
                require("lsp-format").on_attach(client)
            end,
        })
    end,
}
