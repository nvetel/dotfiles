require('gitsigns').setup()

-- lazygit
vim.keymap.set("n", "<leader>gg", function() vim.cmd("LazyGit") end, { desc = "Lazygit" })
