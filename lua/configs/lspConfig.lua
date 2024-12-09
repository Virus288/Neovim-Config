local config = require("lspconfig")
local M = {}
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem = {
    documentationFormat = { "markdown", "plaintext" },
    snippetSupport = true,
    preselectSupport = true,
    insertReplaceSupport = true,
    labelDetailsSupport = true,
    deprecatedSupport = true,
    commitCharactersSupport = true,
    tagSupport = { valueSet = { 1 } },
    resolveSupport = {
        properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
        },
    },
}

vim.lsp.inlay_hint.enable(true)

-- Lsp servers
config.lua_ls.setup {
    capabilities = capabilities,
    on_init = M.on_init,

    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    vim.fn.expand "$VIMRUNTIME/lua",
                    vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
                    "${3rd}/luv/library",
                },
                maxPreload = 100000,
                preloadFileSize = 10000,
            },
        },
    },
}

config.ts_ls.setup {
    capabilities = capabilities,
    init_options = {
        preferences = {
            disableSuggestions = false,
            includeCompletionsForModuleExports = true,
            includeCompletionsForImportStatements = true,
            importModuleSpecifierPreference = "relative",
        },
    },
    filetypes = {
        "javascript",
        "typescript",
    },
    settings = {
        typescript = {
            inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
            },
            experimental = {
                updateImportsOnPaste = true,
                enableProjectDiagnostics = true,
            },
            preferences = {
                preferTypeOnlyAutoImports = true,
                importModuleSpecifier = "relative"
            }
        },
        javascript = {
            inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
            },
        },
    },
}

-- -- Auto import missing files on save
-- vim.api.nvim_create_autocmd("BufWritePre", {
--     group = vim.api.nvim_create_augroup("TS_add_missing_imports", { clear = true }),
--     desc = "TS_add_missing_imports",
--     pattern = { "*.ts" },
--     callback = function()
--         vim.lsp.buf.code_action {
--             apply = true,
--             context = {
--                 only = { "source.addMissingImports.ts" },
--             },
--         }
--         vim.cmd "write"
--     end,
-- })

-- Typos and text checking
config.typos_lsp.setup{
    init_options = {
        config = vim.fn.expand('~/code/typos-lsp/crates/typos-lsp/tests/typos.toml'),  -- Path to configuration file
        diagnosticSeverity = "Error",  -- Adjust based on your preference
    }
}

-- -- Eslint
-- config.eslint.setup {
--     capabilities = capabilities,
--     flags = { debounce_text_changes = 500 },
--     on_attach = function(client, bufnr)
--         client.server_capabilities.documentFormattingProvider = true
--         if client.server_capabilities.documentFormattingProvider then
--             local au_lsp = vim.api.nvim_create_augroup("eslint_lsp", { clear = true })
--             vim.api.nvim_create_autocmd("BufWritePost", {
--                 pattern = "*",
--                 callback = function()
--                     vim.lsp.buf.format { async = true }
--                 end,
--                 group = au_lsp,
--             })
--         end
--     end,
-- }

-- Keybindings for code actions
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
