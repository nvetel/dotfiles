local Config = require("noice.config")

return {
	{
		"folke/noice.nvim",
		opts = {
			routes = {
				-- I want the vim cmds like ls not to vanish not to be in a little box in the corner.
				{
					filter = { cmdline = "ls" },
					view = "cmdline",
				},
			},
		},
		-- disable bufferline, I don't use it, and it eats space
		{ "akinsho/bufferline.nvim", enabled = false },
	},
}
