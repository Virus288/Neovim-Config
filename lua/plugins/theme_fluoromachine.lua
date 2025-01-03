return {
    'maxmx03/fluoromachine.nvim',
    lazy = true,
    priority = 1000,
    config = function ()
    local fm = require 'fluoromachine'
    fm.setup {
        glow = true,
        theme = 'fluoromachine',
        transparent = true,
    }
    end
}
