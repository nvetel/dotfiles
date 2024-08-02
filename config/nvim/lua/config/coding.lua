require('gitsigns').setup()

-- lazygit
vim.keymap.set("n", "<leader>gg", function() vim.cmd("LazyGitCurrentFile") end, { desc = "Lazygit current file" })
