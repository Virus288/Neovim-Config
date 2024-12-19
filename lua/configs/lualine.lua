local config = require("lualine")

local cached_text = nil

local function randomText()
    if not cached_text then
        local filename = vim.fn.expand('%:t')
        local texts = {
            "Breaking file in progress:",
            "Oops, you are breaking it again:",
            "File under destruction:",
            "Another one is biting the dust:",
            "File is in shambles:",
            "Catastrophic file failure happening:"
        }
        local random_index = math.random(#texts)
        local custom_text = texts[random_index]
        cached_text = custom_text .. ' ' .. filename
    end
    return cached_text
end

-- Clear the cached text when a new file is opened
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        cached_text = nil
    end
})

config.setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { randomText },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
})
