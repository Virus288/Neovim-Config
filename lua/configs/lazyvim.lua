local lazy = require("lazy")

lazy.setup({
  spec = {
    { import = "plugins" },
  },
  install = { colorscheme = { "gruvbox" } },
  checker = { enabled = true },
  opts = {},
})
