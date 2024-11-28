return {
      "nvim-treesitter/nvim-treesitter", 
      event = { "BufReadPost", "BufNewFile" },
      cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
      build = ":TSUpdate",
      config = function ()
        require "configs.treesitter"
      end,
    }
