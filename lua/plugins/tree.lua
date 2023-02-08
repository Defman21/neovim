return {
	'nvim-tree/nvim-tree.lua',
	lazy = true,
	opts = {
		on_attach = function(bufnr)
			local api = require 'nvim-tree.api'

			vim.keymap.set('n', '<leader>cd', function()
				local node = api.tree.get_node_under_cursor()
				api.tree.change_root_to_node(node)
			end, { buffer = bufnr, noremap = true, silent = true, nowait = true })
		end
	},
	config = true,
	keys = {
		{ '<leader>ft', '<cmd>NvimTreeToggle<cr>', desc = 'NvimTree' },
	},
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	}
}
