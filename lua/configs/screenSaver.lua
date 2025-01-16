local function trigger_screensaver()
  if vim.fn.mode() == "c" then
    return
  end

  local options = {"water", "game_of_life"}
  local target = options[math.random(#options)]
  vim.cmd("ScreenSaviour " .. target)
end

local inactivity_timer = vim.loop.new_timer()

local function reset_inactivity_timer()
  inactivity_timer:stop()
  inactivity_timer:start(30000, 0, vim.schedule_wrap(trigger_screensaver))
end

vim.api.nvim_create_autocmd({"CursorMoved", "CursorMovedI", "BufWritePost", "TextChanged", "TextChangedI"}, {
  callback = reset_inactivity_timer
})

reset_inactivity_timer()
