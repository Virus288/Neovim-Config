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

-- Formatting
vim.keymap.set('n', '<leader>fd', '', { noremap = true, silent = true, desc = 'Format file' })
vim.keymap.set('n', '<leader>fdj', ':%!jq .', { noremap = true, silent = true, desc = 'Format json' })
vim.keymap.set('v', '<leader>fdj', ":%!jq<CR>", { noremap = true, silent = true, desc = "Format json" })

-- Neovide
if vim.g.neovide then
    vim.g.neovide_scale_factor = 0.8 -- Set default scale factory to be 0.8, because its zoomed way more than neovim itself
    vim.keymap.set({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")

    vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")

    vim.g.neovide_window_blurred = true

    -- Copy to system clipboard
    vim.keymap.set({ "n", "x" }, "<C-S-C>", '"+y', { desc = "Copy to system clipboard", noremap = true })
    vim.api.nvim_set_keymap('v', '<S-C>', '"+y', { noremap = true })

    -- Paste from system clipboard
    vim.keymap.set({ "n", "x" }, "<C-S-V>", '"+p', { desc = "Paste from system clipboard", noremap = true })
    vim.api.nvim_set_keymap('n', '<S-V>', '"+P', { noremap = true })
    vim.api.nvim_set_keymap('v', '<S-V>', '"+P', { noremap = true })
    vim.api.nvim_set_keymap('c', '<S-V>', '<C-r>+', { noremap = true })
    vim.api.nvim_set_keymap('t', '<S-V>', '<C-\\><C-n>"+pi', { noremap = true })
    vim.keymap.set("i", "<C-S-V>", '<Esc>"+pa', { desc = "Paste from clipboard in insert mode", noremap = true })
end
