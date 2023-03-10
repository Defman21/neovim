return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            integrations = {
                barbar = true,
                which_key = true,
                lsp_trouble = true,
                barbecue = {
                    dim_dirname = true,
                },
                mason = true,
                cmp = true,
                nvimtree = true,
                treesitter = true,
                telescope = true,
                fidget = true,
                gitsigns = true,
                indent_blankline = {
                    enabled = true,
                    colored_indent_levels = true,
                },
                navic = {
                    enabled = false,
                    custom_bg = "NONE",
                },
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                },
            },
        })
        vim.cmd.colorscheme("catppuccin-mocha")
    end,
}
