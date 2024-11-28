local config = require("nvim-treesitter.configs")

config.setup({
	sync_install = false,
  auto_install = true,
	highlight = { enable = true, use_languagetree = true, },
	indent = { enable = true },
})
