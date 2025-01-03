return {
  'nvim-telescope/telescope-ui-select.nvim',
  event = "VeryLazy",
  config = function ()
    require "configs.telescope-ui"
  end,
}
