-- toggle floating terminal
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<leader>t", [[<C-\><C-n><cmd>ToggleTerm<cr>]])
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
