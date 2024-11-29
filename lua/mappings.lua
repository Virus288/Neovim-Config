require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>dd", vim.lsp.buf.code_action, { desc = "Under cursor actions" })

map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format file" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementaion" })
map("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
