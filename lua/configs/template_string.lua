local config = require("neocord")

config.setup({
  filetypes = { 'html', 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'python' },
  jsx_brackets = true,
  remove_template_string = true,

  restore_quotes = {
    normal = [[']],
    jsx = [["]],
  },
})
