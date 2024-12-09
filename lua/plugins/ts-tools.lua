return {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require "configs.ts-tools"
    end,
}
