return {
    {
        "tpope/vim-fugitive",
        cmd = { "G", "Git" },
        keys = {
            { "<leader>G", "<cmd>tab G<cr>", desc = "Fugitive Tab" },
        },
    },
    "tpope/vim-rhubarb",
    {
        "lewis6991/gitsigns.nvim",
        config = true,
    },
}
