return {
    "rachartier/tiny-glimmer.nvim",
    event = "TextYankPost",
    lazy = true,
    opts = {
      enabled = true,
      default_animation = "pulse",
          pulse = {
            max_duration = 1000,
            chars_for_max_duration = 15,
            pulse_count = 2,
            intensity = 7,
        },
    },
}
