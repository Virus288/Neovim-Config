return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = {
      current_line_blame = true,
      numhl = true,
    },
    config = function ()
      require "configs.git"
    end,
  }
