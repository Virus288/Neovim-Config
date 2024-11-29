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

