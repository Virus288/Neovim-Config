local lazy = require("lazy")

lazy.setup({
  spec = {
    { import = "plugins" },
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
  opts = {},
})
