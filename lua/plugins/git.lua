return {
    {
        "tpope/vim-fugitive",
        keys = {
            { "<leader>G", "<cmd>tab G<cr>", desc = "Fugitive Tab" },
        },
    },
    "tpope/vim-rhubarb",
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
        },
    },
}
