local config = require("mason-lspconfig")

config.setup({
ensure_installed = {
    "lua_ls",
    "ts_ls"
  }
})
