local config = require "mini.animate"

config.setup({
  cursor = {
    enable = true,
    -- Timing of animation (how steps will progress in time)
    timing = config.gen_timing.linear { duration = 700, unit = "total" },
    -- Path generator for visualized cursor movement
    path = config.gen_path.line {
      predicate = function()
        return true
      end,
    },
  },
  scroll = {
    -- Whether to enable this animation
    enable = true,
    timing = config.gen_timing.linear { duration = 350, unit = "total" },
    subscroll = config.gen_subscroll.equal {
      predicate = function(total_scroll)
        return total_scroll > 1
      end,
    },
  },
  -- Window resize
  resize = {
    enable = true,
    -- Timing of animation (how steps will progress in time)
    timing = config.gen_timing.linear { duration = 350, unit = "total" },
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
    winconfig = config.gen_winconfig.wipe { direction = "from_edge" },
    -- 'winblend' (window transparency) generator for floating window
    winblend = config.gen_winblend.linear { from = 80, to = 120 },
  },
  -- Window close
  close = {
    enable = true,
    -- Timing of animation (how steps will progress in time)
    timing = config.gen_timing.linear { duration = 600, unit = "total" },
    -- Floating window config generator visualizing specific window
    winconfig = config.gen_winconfig.wipe { direction = "to_edge" },
    -- winblend = --<function: implements equal linear steps from 80 to 100>,
    winblend = config.gen_winblend.linear { from = 120, to = 80 },
  },
})
