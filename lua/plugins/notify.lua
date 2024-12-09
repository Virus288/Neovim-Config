return {
        'rcarriga/nvim-notify',
        opts = {
                stages = "static",
                render = "minimal",
                timeout = 2000,
        },
        lazy= false,
        init = function()
                vim.opt.termguicolors = true
                vim.notify = require('notify')
        end,
}
