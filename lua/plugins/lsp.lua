return {
  {
    "williamboman/mason.nvim",
    config = function ()
      require "configs.lsp"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require "configs.masonConfig" 
    end
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
    },
    config = function()
      require "configs.lspConfig" 
    end
  }
}
