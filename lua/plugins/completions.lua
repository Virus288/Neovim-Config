return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		config = function()
			require("configs.completions")
		end,
	},
	{
		"L3MON4D3/LuaSnip",
        event = "VeryLazy",
		dependencies = {
		  "saadparwaiz1/cmp_luasnip",
		  "rafamadriz/friendly-snippets",
		  "hrsh7th/cmp-path",
		  "hrsh7th/cmp-buffer",
		  "hrsh7th/cmp-nvim-lua"
		},
		opts = { history = true, updateevents = "TextChanged,TextChangedI" },
	  },
	  {
		"hrsh7th/cmp-nvim-lsp",
        event = "VeryLazy",
	  },
	  {
        "windwp/nvim-autopairs",
        event = "VeryLazy",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      }
}
