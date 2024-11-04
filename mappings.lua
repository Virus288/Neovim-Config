require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>dd", vim.lsp.buf.code_action, { desc = "Under cursor actions" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
