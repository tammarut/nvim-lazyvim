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

-- ▶ Better paste
-- remap "p" in visual mode to delete the highlighted text without overwriting your yanked/copied text, and then paste the content from the unnamed register.
vim.keymap.set("v", "p", '"_dP')

-- ▶ Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_d')

-- ════════════════════════════════
-- Folding
-- ════════════════════════════════
-- Close all fold except the current one.
vim.keymap.set("n", "zv", "zMzvzz", { desc = "Close all folds except the current one" })

-- ════════════════════════════════
-- Visual
-- ════════════════════════════════
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- ══════════════════════════════
-- Register (Vim clipboard)
-- ══════════════════════════════
-- ▶ Delete single characters without updating the default register
vim.keymap.set("n", "x", '"_x', { desc = "Delete character without saving to default register" })

-- ▶ Paste in visual mode without updating the default register
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without saving to default register" })
vim.keymap.set("v", "d", '"_d', { desc = "Delete visual selection without saving to default register" })

-- ▶ Disable lazyterm keymaps, use toggleterm keymaps instead
vim.api.nvim_del_keymap("n", "<leader>ft")
vim.api.nvim_del_keymap("n", "<leader>fT")
