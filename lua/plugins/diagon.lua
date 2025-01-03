return {
  'h8rtv/diagon.nvim',
  cmd = 'Diagon',
  lazy = true,

  opts = {
    pos = 'substitute', -- 'above' | 'below' | 'substitute' -- You can select the result will substitute de input, be written above or bellow.
    translators = { -- You can select the allowed translators.
        'Math',
        'Sequence',
        'Tree',
        'Table',
        'Grammar',
        'Frame',
        'GraphDAG',
        'GraphPlanar',
        'Flowchart',
    }
  },
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
  },
}
