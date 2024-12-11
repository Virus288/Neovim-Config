local config = require("nvim-treesitter.configs")

config.setup({
    ensure_installed = { "typescript", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript" },
	sync_install = false,
    auto_install = true,
	highlight = { enable = true, use_languagetree = true, },
	indent = { enable = true },
})
