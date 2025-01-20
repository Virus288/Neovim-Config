-- Show keys and colors on startup
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.defer_fn(function()
            vim.o.background = "light"
            vim.cmd('colorscheme gruvbox')
        end, 100)
    end
})

-- Set colorscheme before Bufferline setup
vim.o.background = "light"
vim.cmd('colorscheme gruvbox')

local config = require "bufferline"

config.setup {
    options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        style_preset = config.style_preset.minimal,
        themable = true,
        numbers = "ordinal",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
            icon = "▎",
            style = "icon",
        },
        buffer_close_icon = "",
        modified_icon = "● ",
        close_icon = " ",
        left_trunc_marker = " ",
        right_trunc_marker = " ",
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        tab_size = 18,
        diagnostics = "nvim_lsp",
        diagnostics_update_on_event = true, -- use nvim's diagnostic handler
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " "
                or (e == "warning" and " " or " ")
                s = s .. n .. sym
            end
            return s
        end,
        custom_filter = function(buf_number, buf_numbers)
            if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
                return true
            end
            if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
                return true
            end
            if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
                return true
            end
            -- filter out by it's index number in list (don't show first buffer)
            if buf_numbers[1] ~= buf_number then
                return true
            end
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text_align = "center",
                separator = true,
            },
        },
        color_icons = true,   -- whether or not to add the filetype icon highlights
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
        duplicates_across_groups = true, -- whether to consider duplicate paths in different groups as duplicates
        persist_buffer_sort = true,  -- whether or not custom sorted buffers should persist
        move_wraps_at_ends = false,  -- whether or not the move command "wraps" at the first or last position
        separator_style = "slant",
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        auto_toggle_bufferline = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = { "close" },
        },
        sort_by = "id",
    },
}

-- Toggle via buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })

-- Key mapping to close the current buffer
vim.keymap.set("n", "<leader>x", ":Sayonara!<CR>", { noremap = true, silent = true })

-- Exit data search = "/"
vim.keymap.set("n", "<Esc>", ":noh<CR><Esc>", { noremap = true, silent = true })
