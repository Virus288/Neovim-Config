 local config = require("nvim-treesitter.configs")

 config.setup({
          ensure_installed = { "lua", "vim", "vimdoc",  "javascript", "typescript" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
 })


