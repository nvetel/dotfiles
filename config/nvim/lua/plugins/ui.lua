return {
	{
		"navarasu/onedark.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		keys = {
			-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/editor.lua
			{
				"<C-n>",
				function()
					require("neo-tree.command").execute({})
				end,
				desc = "Explorer NeoTree",
			},
		},
		opts = {
			filesystem = {
				window = {
					mappings = {
						["/"] = "none",
					},
				},
			},
			window = {
				mappings = {
					["<space>"] = "none",
				},
			},
		},
	},
}
