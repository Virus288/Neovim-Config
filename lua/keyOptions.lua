-- Spaces and tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Map leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", ";", ":", { silent = true, desc = "CMD enter command mode" })
vim.keymap.set("v", ";", ":", { silent = true, desc = "CMD enter command mode" })
vim.keymap.set("i", "jk", "<ESC>", { silent = true, desc = "Edit edit mode" })

-- Add support for ssh clipboard
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  -- paste = {
  --   ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
  --   ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  -- },
}

-- Yank to system clipboard
vim.keymap.set('n', 'y', '"+y', { noremap = true, silent = true })
vim.keymap.set('v', 'y', '"+y', { noremap = true, silent = true })

-- Add support for copying stuff outside nvim
vim.opt.clipboard = "unnamedplus"

-- Move coursor to next line without ctr
vim.opt.whichwrap:append("h,l,<,>,[,]")

