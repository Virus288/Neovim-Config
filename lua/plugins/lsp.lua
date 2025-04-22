return {
    {
        "williamboman/mason.nvim",
        event = "VeryLazy",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "typos-lsp",
                "eslint-lsp",
            },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        config = function()
            require "configs.masonConfig"
        end
    },
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        opts = {
            inlay_hints = { enabled = true },
        },
        config = function()
            require "configs.lspConfig"
        end
    }
}
