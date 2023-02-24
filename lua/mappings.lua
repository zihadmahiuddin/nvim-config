-- [[ Basic Keymaps ]]
local keymap = vim.keymap.set

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)
keymap('n', '<leader>f', vim.diagnostic.open_float)
keymap('n', '<leader>q', vim.diagnostic.setloclist)

-- Buffer keymaps
keymap("n", "<leader>c", "<cmd>bd<cr>", { desc = "Close the current buffer" })
keymap("n", "<tab>", "<cmd>bnext<cr>", { desc = "Go to the next buffer" })
keymap("n", "<s-tab>", "<cmd>bprev<cr>", { desc = "Go to the prev buffer" })

