--- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt

opt.expandtab = true -- Use spaces instead of tabs
opt.laststatus = 3 -- global statusline
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.shiftwidth = 2 -- Size of an indent
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.tabstop = 2 -- Number of spaces tabs count for
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.wrap = true -- Enable line wrap
