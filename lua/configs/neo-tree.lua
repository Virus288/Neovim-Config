local config = require "neo-tree"

-- Toggle neotree
vim.keymap.set("n", "<C-n>", ":Neotree toggle filesystem right<CR>", { noremap = true, silent = true })

config.setup {
  close_if_last_window = false,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  file_size = {
    enabled = true,
    required_width = 5,
  },
  type = {
    enabled = false,
  },
  last_modified = {
    enabled = true,
    required_width = 5,
  },
  created = {
    enabled = false,
  },
  symlink_target = {
    enabled = false,
  },
  filesystem = {
    filtered_items = {
      hide_hidden = false,
      hide_dotfiles = false,
      hide_gitignored = false,
    },
    follow_current_file = {
      enabled = true,
      leave_dirs_open = false,
    },
    window = {
      mappings = {
        ["<BS>"] = "close_node",
      },
    },
  },
}
