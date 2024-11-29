local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "eslint" },
    javascript = { "eslint" },
    javascriptreact = { "eslint", "prettier" },
    typescript = { "eslint", "prettier" },
    typescriptreact = { "eslint", "prettier" },
  },

  format_on_save = {
    timeout_ms = 200,
    lsp_fallback = true,
  },
}

return options
