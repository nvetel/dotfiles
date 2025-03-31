return {
	-- file explorer
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{
				"<leader>fe",
				function()
					require("neo-tree.command").execute({ position = "current", reveal = true, dir = LazyVim.root() })
				end,
				desc = "Explorer NeoTree (Root Dir)",
			},
			{
				"<leader>fE",
				function()
					require("neo-tree.command").execute({ position = "current", reveal = true, dir = vim.uv.cwd() })
				end,
				desc = "Explorer NeoTree (cwd)",
			},
			{ "<leader>e", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
			{ "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
		},
	},
}
