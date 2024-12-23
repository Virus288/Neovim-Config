local config = require("which-key")

config.add({
  -- Telescope
  { "<leader>f", group = "Telescope/Fold" },
  { "<leader>gt", "<cmd>Telescope git_status<CR>", desc = "Git status", mode = "n" },
  { "<leader>cm", "<cmd>Telescope git_commits<CR>", desc = "Git commits", mode = "n" },

  -- Diagnostics
  { "<leader>ds", vim.diagnostic.setloclist, desc = "Diagnostics in current buffer", mode = "n" },

  -- Folding
  { "<leader>zf", ':normal! zf<CR>', desc = "Fold text", mode = "n" },
  { "<leader>zc", ':normal! zc<CR>', desc = "Fold text", mode = "n" },
  { "<leader>zo", ':normal! zo<CR>', desc = "Fold text", mode = "n" },
  { "<leader>za", ':normal! za<CR>', desc = "Fold text", mode = "n" },

  -- Neovide
  { "<C-+>", ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>', desc = "Zoom in neovide", mode = "n" },
  { "<C-+>", ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>', desc = "Zoom in neovide", mode = "v" },

  { "<C-->", ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>', desc = "Zoom out neovide", mode = "n" },
  { "<C-->", ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>', desc = "Zoom out neovide", mode = "v" },

  { "<C-0>", ':lua vim.g.neovide_scale_factor = 1<CR>', desc = "Reset zoom in neovide", mode = "n" },
  { "<C-0>", ':lua vim.g.neovide_scale_factor = 1<CR>', desc = "Reset zoom in neovide", mode = "v" },

  -- Formatting
  { "<leader>dd", vim.lsp.buf.code_action, desc = "Under cursor commands", mode = "n" },

  -- Keybindings for code actions
  { "K", vim.lsp.buf.hover, desc = "Get information about var under cursor", mode = "n" },
  { "gD", vim.lsp.buf.declaration, desc = "Go to declaration", mode = "n" },
  { "gd", vim.lsp.buf.definition, desc = "Go to definition", mode = "n" },
  { "gi", vim.lsp.buf.implementation, desc = "Go to implementation", mode = "n" },
  { "gr", vim.lsp.buf.references, desc = "Go to references", mode = "n" },

  -- Buffers
  { "<leader>x", ':Sayonara!<CR>', desc = "", mode = "n" },

  -- Tree
  { "<C-n>", ':NvimTreeToggle<CR>', desc = "Open tree", mode = "n" },

})

