return {
    "rachartier/tiny-glimmer.nvim",
    event = "TextYankPost",
    opts = {
        default_animation = "left_to_right",
        pulse = {
            max_duration = 1000,
            chars_for_max_duration = 15,
            pulse_count = 2,
            intensity = 1,
        },
    },
}
