return {
    "mistricky/codesnap.nvim",
    event = "VeryLazy",
    build = "make",
    keys = {
        { "<leader>cc", "<cmd>CodeSnap<cr>",     mode = "x", desc = "Save selected code snapshot into clipboard" },
        { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
        { "<leader>ch", "<cmd>CodeSnapSaveHighlight<cr>", mode = "x", desc = "Save selected code snapshot with highlight" },
    },
    opts = {
        save_path = "~/Pictures",
        has_breadcrumbs = true,
        bg_theme = "summer",
        watermark = ""
    },
}
