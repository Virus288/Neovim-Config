local config = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load()

config.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	window = {
		completion = config.config.window.bordered(),
		documentation = config.config.window.bordered(),
	},
	mapping = config.mapping.preset.insert({
		["<C-b>"] = config.mapping.scroll_docs(-4),
		["<C-f>"] = config.mapping.scroll_docs(4),
		["<C-Space>"] = config.mapping.complete(),
		["<C-e>"] = config.mapping.abort(),
		["<CR>"] = config.mapping.confirm({ select = true }),
	}),
	sources = config.config.sources({
		-- { name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
})
