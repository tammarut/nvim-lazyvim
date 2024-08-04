-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ════════════════════════════════
-- Key mappings
-- ════════════════════════════════
-- ▶ Go to beginning line and end line
vim.keymap.set("n", "B", "^", { desc = "Go to beginning of the line" })
vim.keymap.set("n", "E", "$", { desc = "Go to end of the line" })

-- ▶ Seleact all (Ctrl + a)
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- ▶ Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_d')

-- ══════════════════════════════
-- Register (Vim clipboard)
-- ══════════════════════════════
-- ▶ Delete single characters without updating the default register
vim.keymap.set("n", "x", '"_x', { desc = "Delete character without saving to default register" })

-- ▶ Paste in visual mode without updating the default register
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without saving to default register" })
vim.keymap.set("v", "d", '"_d', { desc = "Delete visual selection without saving to default register" })
