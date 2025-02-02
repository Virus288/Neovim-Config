local config = require("mason-lspconfig")

config.setup({
    ensure_installed = {
        "lua_ls",
        "clangd",
        "ts_ls"
    }
})
