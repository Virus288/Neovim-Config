---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",
    transparency = true,

    cmp = {
        icons = true,
        lspkind_text = true,
        style = "flat_light",
    },

    telescope = { style = "borderless" },

    statusline = {
        theme = "minimal",
        separator_style = "arrow",
        order = nil,
        modules = nil,
    },

    cheatsheet = {
        theme = "grid", -- simple/grid
        excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
    },

    lsp = {
        signature = {
            disabled = false,
            silent = true, -- silences 'no signature help available' message from appearing
        },
  },

    tabufline = {
        enabled = true,
        lazyload = true,
        order = { "treeOffset", "buffers", "tabs", "btns" },
        modules = nil,
    },
}

M.nvdash = {
    load_on_startup = true,

    header = {
      [[ _______________________________ ]],
      [[< Keep calm and don't cry >]],
      [[ ------------------------------- ]],
      [[  \   ^__^                       ]],
      [[   \  (oo)\_______               ]],
      [[      (__)\       )\/\           ]],
      [[          ||----w |              ]],
      [[          ||     ||              ]],
    },

    -- header = {
    --   [[                                         ]],
    --   [[      888     888 d8b                    ]],
    --   [[      888     888 Y8P                    ]],
    --   [[      888     888                        ]],
    --   [[      Y88b   d88P 888 88888b.d88b.       ]],
    --   [[       Y88b d88P  888 888 "888 "88b      ]],
    --   [[        Y88o88P   888 888  888  888      ]],
    --   [[         Y888P    888 888  888  888      ]],
    --   [[          Y8P     888 888  888  888      ]],
    --   [[                                         ]],
    -- },

    buttons = {
      { txt = "  Find File",    keys = "Spc f f", cmd = "Telescope find_files" },
      { txt = "󰈚  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
      { txt = "󰈭  Find Word",    keys = "Spc f w", cmd = "Telescope live_grep" },
      { txt = "  Bookmarks",    keys = "Spc m a", cmd = "Telescope marks" },
      { txt = "  Themes",       keys = "Spc t h", cmd = "Telescope themes" },
      { txt = "  Mappings",     keys = "Spc c h", cmd = "NvCheatsheet" },
    },
}

return M
