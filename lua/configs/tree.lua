local config = require("nvim-tree")

-- Toggle neotree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })

config.setup {
    disable_netrw = true,
    hijack_cursor = true,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    view = {
        width = 30,
        preserve_window_proportions = true,
        side = "right",
    },
    renderer = {
        root_folder_label = false,
        highlight_git = true,
        indent_markers = { enable = true },
    },
    filters = {
        enable = true,
        git_ignored = false,
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        no_bookmark = false,
    },
    actions = {
        open_file = {
            resize_window = false
        }
    }
}
