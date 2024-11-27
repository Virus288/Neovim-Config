local config = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Lsp servers
config.lua_ls.setup({
	capabilities = capabilities,
})
config.ts_ls.setup({
	capabilities = capabilities,
})

-- Keybindings for code actions
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
