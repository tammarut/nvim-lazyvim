-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- ▶ Time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.timeoutlen = vim.g.vscode and 1000 or 250 -- Lower than default (1000) to quickly trigger which-key
vim.opt.ttimeoutlen = 90

-- ▶ Tab and Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
