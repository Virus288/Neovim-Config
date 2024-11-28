local config = require("telescope")

config.setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    }
  }
}

config.load_extension("ui-select")
