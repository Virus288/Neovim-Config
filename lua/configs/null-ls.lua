local config = require("null-ls")

config.setup({
    sources = {
        config.builtins.formatting.stylua,
        config.builtins.completion.spell,
        require("none-ls.diagnostics.eslint"),
        config.builtins.formatting.prettier,
    },
})

local function format()
    vim.lsp.buf.format({ async = true })
    vim.cmd("write")
end

vim.keymap.set("n", "<leader>gf", format)
