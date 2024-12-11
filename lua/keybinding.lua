-- Spaces and tabs

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Map leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("i", "jk", "<ESC>")

-- Yank to system clipboard
vim.keymap.set('n', 'y', '"+y', { noremap = true, silent = true })
vim.keymap.set('v', 'y', '"+y', { noremap = true, silent = true })

-- Optional: Set the clipboard option to always use the system clipboard
vim.opt.clipboard = "unnamedplus"

-- Move coursor to next line without ctr
vim.opt.whichwrap:append("h,l,<,>,[,]")

-- Git
vim.keymap.set("n", "<leader>gt", "<cmd>Telescope git_status<CR>")
vim.keymap.set("n", "<leader>cm", "<cmd>Telescope git_commits<CR>")

-- Terminal
vim.keymap.set("t", "<C-x>", "<C-\\><C-N>")

-- Diagnostics
vim.keymap.set("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })

-- Folding
vim.o.foldmethod = 'syntax'
vim.api.nvim_set_keymap('v', '<leader>zf', ':normal! zf<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>zc', ':normal! zc<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>zo', ':normal! zo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>za', ':normal! za<CR>', { noremap = true, silent = true })

-- Neovide
if vim.g.neovide then
    vim.g.neovide_scale_factor = 0.8 -- Set default scale factory to be 0.8, because its zoomed way more than neovim itself
    vim.keymap.set({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end
