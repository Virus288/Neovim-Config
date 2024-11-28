local config = require("bufferline")

config.setup()

-- Toggle via buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { noremap = true, silent = true })

-- Key mapping to close the current buffer
vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { noremap = true, silent = true })

-- Exit data search = "/"
vim.keymap.set('n', '<Esc>', ':noh<CR><Esc>', { noremap = true, silent = true })
