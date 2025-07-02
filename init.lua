-- Init keybindings
require("keyOptions")

-- Default options
require "options"

-- Config for lazy.nvim = package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")

lazy.setup({
    spec = {
        { import = "plugins" },
    },
    install = { colorscheme = { "gruvbox" } },
    checker = { enabled = true },
    opts = {},
})

-- Init keybindings
require("keybinding")

-- Show keys on startup
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("ShowkeysToggle")
    end
})

-- Theme initialization was moved to 'lua/configs/buffer.lua', due to issues with coloring bufferline

-- Set transparent background
function Transparent()
  vim.cmd [[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NonText guibg=NONE ctermbg=NONE
    highlight NormalFloat guibg=NONE ctermbg=NONE
    highlight NvimTreeNormal guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
    highlight VertSplit guibg=NONE ctermbg=NONE
    highlight StatusLine guibg=NONE ctermbg=NONE
    highlight StatusLineNC guibg=NONE ctermbg=NONE
    highlight WinSeparator guibg=NONE ctermbg=NONE
    highlight LineNr guibg=NONE ctermbg=NONE
    highlight CursorLineNr guibg=NONE ctermbg=NONE
  ]]
end

-- Set neovide fullscreen
function Toggle_neovide_fullscreen()
  if vim.g.neovide_fullscreen then

    vim.g.neovide_fullscreen = false
  else
    vim.g.neovide_fullscreen = true
  end
end
