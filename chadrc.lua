---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",
    transparency = false,

    cmp = {
        icons = true,
        lspkind_text = true,
        style = "flat_light", -- default/flat_light/flat_dark/atom/atom_colored
    },

    telescope = { style = "borderless" },

    statusline = {
        theme = "minimal", -- default/vscode/vscode_colored/minimal
        -- default/round/block/arrow separators work only for default statusline theme
        -- round and block will work for minimal theme only
        separator_style = "arrow",
        order = nil,
        modules = nil,
    },

    cheatsheet = {
        theme = "grid", -- simple/grid
        excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
    },

    lsp = {
        -- show function signatures i.e args as you type
        signature = {
            disabled = false,
            silent = false, -- silences 'no signature help available' message from appearing
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
      [[                                         ]],
      [[      888     888 d8b                    ]],
      [[      888     888 Y8P                    ]],
      [[      888     888                        ]],
      [[      Y88b   d88P 888 88888b.d88b.       ]],
      [[       Y88b d88P  888 888 "888 "88b      ]],
      [[        Y88o88P   888 888  888  888      ]],
      [[         Y888P    888 888  888  888      ]],
      [[          Y8P     888 888  888  888      ]],
      [[                                         ]],
    },

    buttons = {
      { txt = "  Find File",    keys = "Spc f f", cmd = "Telescope find_files" },
      { txt = "󰈚  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
      { txt = "󰈭  Find Word",    keys = "Spc f w", cmd = "Telescope live_grep" },
      { txt = "  Bookmarks",    keys = "Spc m a", cmd = "Telescope marks" },
      { txt = "  Themes",       keys = "Spc t h", cmd = "Telescope themes" },
      { txt = "  Mappings",     keys = "Spc c h", cmd = "NvCheatsheet" },
    },
}

-- This is stupid, but animate seems to not work in separate file
local animate = require "mini.animate"

require("mini.animate").setup({
  cursor = {
    enable = true,

    -- Timing of animation (how steps will progress in time)
    timing = animate.gen_timing.linear { duration = 700, unit = "total" },

    -- Path generator for visualized cursor movement
    path = animate.gen_path.line {
      predicate = function()
        return true
      end,
    },
  },

  scroll = {
    -- Whether to enable this animation
    enable = true,
    timing = animate.gen_timing.linear { duration = 350, unit = "total" },
    subscroll = animate.gen_subscroll.equal {
      predicate = function(total_scroll)
        return total_scroll > 1
      end,
    },
  },

  -- Window resize
  resize = {
    enable = true,

    -- Timing of animation (how steps will progress in time)
    timing = animate.gen_timing.linear { duration = 350, unit = "total" },

    -- Subresize generator for all steps of resize animations
    -- subresize = --<function: implements equal linear steps>,
  },

  -- Window open
  open = {
    enable = true,

    -- Timing of animation (how steps will progress in time)
    timing = function(_, n)
      return 350 / n
    end,

    winconfig = animate.gen_winconfig.wipe { direction = "from_edge" },

    -- 'winblend' (window transparency) generator for floating window
    winblend = animate.gen_winblend.linear { from = 80, to = 120 },
  },

  -- Window close
  close = {
    enable = true,

    -- Timing of animation (how steps will progress in time)
    timing = animate.gen_timing.linear { duration = 600, unit = "total" },

    -- Floating window config generator visualizing specific window
    winconfig = animate.gen_winconfig.wipe { direction = "to_edge" },

    -- winblend = --<function: implements equal linear steps from 80 to 100>,
    winblend = animate.gen_winblend.linear { from = 120, to = 80 },
  },
})

return M
