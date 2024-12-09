return {
        'rcarriga/nvim-notify',
        opts = {
                stages = "fade",
                render = "default",
                timeout = 3000,
        },
        lazy= false,
        init = function()
                vim.opt.termguicolors = true
                vim.notify = require('notify')
        end,
}
