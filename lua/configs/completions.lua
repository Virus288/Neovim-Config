local config = require "cmp"
require("luasnip.loaders.from_vscode").lazy_load()

config.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  window = {
    completion = config.config.window.bordered(),
    documentation = config.config.window.bordered(),
  },
  mapping = config.mapping.preset.insert {
    ["<C-p>"] = config.mapping.select_prev_item(),
    ["<C-n>"] = config.mapping.select_next_item(),
    ["<C-d>"] = config.mapping.scroll_docs(-4),
    ["<C-f>"] = config.mapping.scroll_docs(4),
    ["<C-Space>"] = config.mapping.complete(),
    ["<C-e>"] = config.mapping.close(),

    ["<CR>"] = config.mapping.confirm {
      behavior = config.ConfirmBehavior.Insert,
      select = true,
    },

    ["<Tab>"] = config.mapping(function(fallback)
      if config.visible() then
        config.select_next_item()
      elseif require("luasnip").expand_or_jumpable() then
        require("luasnip").expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<Up>"] = function(fallback)
      fallback()
    end,
    ["<Down>"] = function(fallback)
      fallback()
    end,
    ["<Left>"] = function(fallback)
      fallback()
    end,
    ["<Right>"] = function(fallback)
      fallback()
    end,

    ["<S-Tab>"] = config.mapping(function(fallback)
      if config.visible() then
        config.select_prev_item()
      elseif require("luasnip").jumpable(-1) then
        require("luasnip").jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  sources = config.config.sources {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
  },
}
