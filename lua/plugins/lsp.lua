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
    config = function()
      require "configs.lspConfig" 
    end
  }
}
