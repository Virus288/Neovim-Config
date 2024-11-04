local M = {}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = ":%!jq .",
})

return M
