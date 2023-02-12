return {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
        {
            "SmiteshP/nvim-navic",
            config = function()
                require("nvim-navic").setup({
                    highlight = true,
                })
            end,
        },
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
        theme = "cappuccin",
    },
}
