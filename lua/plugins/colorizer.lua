return {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    lazy = true,
    opts = {},
    config = function ()
      require("colorizer").setup()
    end
}
