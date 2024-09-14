return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
			filesystem = {
				follow_current_file = {
					enabled = true, -- This will find and focus the file in the active buffer every
				},
				-- time the current file is changed while the tree is open.
				group_empty_dirs = true, -- when true, empty folders will be grouped together
				hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
			},
		},
	},
}
