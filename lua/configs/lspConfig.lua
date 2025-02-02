local lspconfig = require("lspconfig")
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

local servers = {
    'lua_ls',
	-- 'ts_ls'
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
	})
end


-- Lsp servers
lspconfig.lua_ls.setup {
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

-- C++
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    -- on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

-- Auto import missing files on save
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("TS_add_missing_imports", { clear = true }),
    desc = "TS_add_missing_imports",
    pattern = { "*.ts" },
    callback = function()
        vim.lsp.buf.code_action {
            apply = true,
            context = {
                diagnostics = {},
                only = { "refactor" },
            },
        }
        vim.cmd "write"
    end,
})

-- -- Typos and text checking -- I switched to alpine and it does not support this addon
lspconfig.typos_lsp.setup {
    init_options = {
        config = vim.fn.expand "~/code/typos-lsp/crates/typos-lsp/tests/typos.toml",
        diagnosticSeverity = "Error",
    },
}

-- Eslint
local function use_flat_config()
    local flat_config_file = vim.fn.glob("eslint.config.mjs")
    return flat_config_file ~= ""
end

lspconfig.eslint.setup {
    settings = {
        codeAction = {

            showDocumentation = {
                enable = false
            }
        },
        codeActionOnSave = {
            enable = true,
            mode = "all"
        },
        experimental = {
            useFlatConfig = use_flat_config(),
        },
        format = true,
        nodePath = "",
        onIgnoredFiles = "off",
        problems = {
            shortenToSingleLine = true
        },
        quiet = true,
        rulesCustomizations = {},
        run = "onType",
        useESLintClass = false,
        validate = "on",
        workingDirectory = {
            mode = "location"
        }
    },
    flags = { debounce_text_changes = 1000, allow_incremental_sync = true },
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = true
        local au_lsp = vim.api.nvim_create_augroup("eslint_d", { clear = true })
        vim.api.nvim_create_autocmd("BufWritePre", {
            -- buffer = bufnr,
            pattern = "*",
            callback = function()
                vim.cmd "EslintFixAll"
            end,
            group = au_lsp,
        })
    end,
}

-- Keybindings for code actions
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "View type" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to reference" })
vim.keymap.set("n", "<leader>dd", vim.lsp.buf.code_action, { desc = "Under cursor commands" })
