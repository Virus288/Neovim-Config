require('zone').setup {
    style = "vanish",

    after = 30, -- Idle timeout
    exclude_filetypes = { "TelescopePrompt", "NvimTree", "neo-tree", "lazy" },
    treadmill = {
        direction = "left",
        headache = true,
        tick_time = 30,
    },
    epilepsy = {
        stage = "aura", -- "aura" or "ictal"
        tick_time = 100,
    },
    dvd = {
        -- text = {"line1", "line2", "line3", "etc"}
        tick_time = 100,
    },
}
