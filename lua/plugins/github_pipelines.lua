return {
  'topaxi/pipeline.nvim',
  keys = {
    { '<leader>ci', '<cmd>Pipeline<cr>', desc = 'Open pipeline.nvim' },
  },
  lazy = true,

  build = 'make',
  ---@type pipeline.Config
  opts = {},
}
