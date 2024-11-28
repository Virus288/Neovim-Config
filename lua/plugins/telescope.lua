return {
      'nvim-telescope/telescope.nvim', 
      tag = '0.1.8',
      cmd = "Telescope",
      dependencies = { 
        'nvim-lua/plenary.nvim',
        "nvim-treesitter/nvim-treesitter"
      },
      config = function ()
        require "configs.telescope"
      end,
    } 
