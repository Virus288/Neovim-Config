-- Git
vim.keymap.set("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Git status" })
vim.keymap.set("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })

-- Terminal
vim.keymap.set("t", "<C-x>", "<C-\\><C-N>", { desc = "Start terminal" })

-- Diagnostics
vim.keymap.set("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })

-- Folding
vim.o.foldmethod = 'manual'
vim.keymap.set('n', '<leader>zf', ':normal! zf<CR>', { silent = true, desc = 'Fold text' })
vim.keymap.set('n', '<leader>zc', ':normal! zc<CR>', { silent = true, desc = 'Fold text' })
vim.keymap.set('n', '<leader>zo', ':normal! zo<CR>', { silent = true, desc = 'Fold text' })
vim.keymap.set('n', '<leader>za', ':normal! za<CR>', { silent = true, desc = 'Fold text' })

-- Neovide
if vim.g.neovide then
    vim.g.neovide_scale_factor = 0.8 -- Set default scale factory to be 0.8, because its zoomed way more than neovim itself
    vim.keymap.set({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")

    -- Paste and copy
    vim.api.nvim_set_keymap('v', '<sc-c>', '"+y', { noremap = true })
    vim.api.nvim_set_keymap('n', '<sc-v>', 'l"+P', { noremap = true })
    vim.api.nvim_set_keymap('v', '<sc-v>', '"+P', { noremap = true })
    vim.api.nvim_set_keymap('c', '<sc-v>', '<C-o>l<C-o>"+<C-o>P<C-o>l', { noremap = true })
    vim.api.nvim_set_keymap('i', '<sc-v>', '<ESC>l"+Pli', { noremap = true })
    vim.api.nvim_set_keymap('t', '<sc-v>', '<C-\\><C-n>"+Pi', { noremap = true })
end
