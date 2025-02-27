-- https://github.com/nvim-telescope/telescope.nvim/tree/master#usage
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Find Files"})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {desc = "Live Grep"})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {desc = "Buffers"})
vim.keymap.set('n', "<leader>fr", builtin.resume, {desc = "Resume Last Search"})
vim.keymap.set('n', "<leader>fo", builtin.oldfiles, {desc = "Find Old Files"})
-- search from https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/editor.lua
vim.keymap.set('n', "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Document diagnostics" })
vim.keymap.set('n', "<leader>sD", "<cmd>Telescope diagnostics<cr>", { desc = "Workspace diagnostics" })
vim.keymap.set('n', "<leader>sj", "<cmd>Telescope jumplist<cr>", { desc = "Jump list" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
vim.keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
vim.keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
vim.keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
vim.keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
vim.keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })
