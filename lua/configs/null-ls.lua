
local config = require("null-ls")

config.setup({
    sources = {
        config.builtins.formatting.stylua,
        config.builtins.completion.spell,
        require("none-ls.diagnostics.eslint"),
        config.builtins.formatting.prettier,
    },
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
