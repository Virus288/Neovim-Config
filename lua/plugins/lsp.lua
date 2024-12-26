return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "typescript-language-server",
                -- "typos-lsp",
                "eslint-lsp",
            },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require "configs.masonConfig"
        end
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = true },
        },
        config = function()
            require "configs.lspConfig"
        end
    }
}
