return {
    "romgrk/barbar.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    lazy = false,
    keys = {
        { "<A-,>", "<Cmd>BufferPrevious<CR>", "n", noremap = true, silent = true },
        { "<A-.>", "<Cmd>BufferNext<CR>", "n", noremap = true, silent = true },
        { "<A-<>", "<Cmd>BufferMovePrevious<CR>", "n", noremap = true, silent = true },
        { "<A->>", "<Cmd>BufferMoveNext<CR>", "n", noremap = true, silent = true },
        { "<A-1>", "<Cmd>BufferGoto 1<CR>", "n", noremap = true, silent = true },
        { "<A-2>", "<Cmd>BufferGoto 2<CR>", "n", noremap = true, silent = true },
        { "<A-3>", "<Cmd>BufferGoto 3<CR>", "n", noremap = true, silent = true },
        { "<A-4>", "<Cmd>BufferGoto 4<CR>", "n", noremap = true, silent = true },
        { "<A-5>", "<Cmd>BufferGoto 5<CR>", "n", noremap = true, silent = true },
        { "<A-6>", "<Cmd>BufferGoto 6<CR>", "n", noremap = true, silent = true },
        { "<A-7>", "<Cmd>BufferGoto 7<CR>", "n", noremap = true, silent = true },
        { "<A-8>", "<Cmd>BufferGoto 8<CR>", "n", noremap = true, silent = true },
        { "<A-9>", "<Cmd>BufferGoto 9<CR>", "n", noremap = true, silent = true },
        { "<A-0>", "<Cmd>BufferLast<CR>", "n", noremap = true, silent = true },
        { "<A-p>", "<Cmd>BufferPin<CR>", "n", noremap = true, silent = true },
        { "<A-c>", "<Cmd>BufferClose<CR>", "n", noremap = true, silent = true },
        { "<C-p>", "<Cmd>BufferPick<CR>", "n", noremap = true, silent = true },
    },
    config = function()
        require("bufferline").setup({
            animation = false,
            icon_pinned = "",
        })
        local nvim_tree_events = require("nvim-tree.events")
        local bufferline_api = require("bufferline.api")

        local function get_tree_size()
            return require("nvim-tree.view").View.width
        end

        nvim_tree_events.subscribe("TreeOpen", function()
            bufferline_api.set_offset(get_tree_size())
        end)

        nvim_tree_events.subscribe("Resize", function()
            bufferline_api.set_offset(get_tree_size())
        end)

        nvim_tree_events.subscribe("TreeClose", function()
            bufferline_api.set_offset(0)
        end)
    end,
}
