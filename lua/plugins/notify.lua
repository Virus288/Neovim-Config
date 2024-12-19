return {
    'rcarriga/nvim-notify',
    opts = {
        stages = "fade",
        render = "default",
        timeout = 1000,
        fps = 60,
    },
    lazy = false,
    init = function()
        vim.opt.termguicolors = true
        vim.notify = require('notify')
    end,
    config = function()
        local stages_util = require("notify.stages.util")
        local direction = stages_util.DIRECTION.BOTTOM_UP

        require("notify").setup({
            -- This is like a mix between fade_in_slide_out and fade
            -- But centered at the top, fading instead of "closing" to the side
            -- And single bordered
            -- Considered as closed on the last stage on a higher opacity than originally
            stages = {
                function(state)
                    local next_height = state.message.height + 2
                    local next_row = stages_util.available_slot(state.open_windows, next_height, direction)
                    local col = (vim.opt.columns:get() / 2) + (state.message.width / 2)
                    if not next_row then
                        return nil
                    end

                    return {
                        relative = "editor",
                        anchor = "NE",
                        width = state.message.width,
                        height = state.message.height,
                        col = col,
                        row = next_row,
                        border = "single",
                        style = "minimal",
                        opacity = 0,
                    }
                end,
                function(state, win)
                    local col = (vim.opt.columns:get() / 2) + (state.message.width / 2)

                    return {
                        opacity = { 100 },
                        col = { col },
                        row = {
                            stages_util.slot_after_previous(win, state.open_windows, direction),
                            frequency = 5,
                            complete = function()
                                return true
                            end,
                        },
                    }
                end,
                function(state, win)
                    local col = (vim.opt.columns:get() / 2) + (state.message.width / 2)

                    return {
                        col = { col },
                        time = true,
                        row = {
                            stages_util.slot_after_previous(win, state.open_windows, direction),
                            frequency = 3,
                            complete = function()
                                return true
                            end,
                        },
                    }
                end,
                function(state, win)
                    local col = (vim.opt.columns:get() / 2) + (state.message.width / 2)

                    return {
                        opacity = {
                            0,
                            frequency = 3,
                            complete = function(cur_opacity)
                                return cur_opacity <= 8
                            end,
                        },
                        col = { col },
                        row = {
                            stages_util.slot_after_previous(win, state.open_windows, direction),
                            frequency = 3,
                            complete = function()
                                return true
                            end,
                        },
                    }
                end,
            },
        })
    end,
}
