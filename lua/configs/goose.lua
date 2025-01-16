local function trigger_screensaver()
  if vim.fn.mode() == "c" then
    return
  end

  require("goose").hatch()
end

local inactivity_timer = vim.loop.new_timer()

local function reset_inactivity_timer()
  inactivity_timer:stop()
  inactivity_timer:start(10000, 0, vim.schedule_wrap(trigger_screensaver))
end

vim.api.nvim_create_autocmd({"CursorMoved", "CursorMovedI", "BufWritePost", "TextChanged", "TextChangedI"}, {
  callback = reset_inactivity_timer
})

reset_inactivity_timer()

vim.keymap.set('n', '<leader>mq', function() require("goose").hatch() end, {})
vim.keymap.set('n', '<leader>mw', function() require("goose").cook() end, {})

-- Below hooks are required, because goose plugin seems to be throwing hundreds of errors on resize / :q, making neovim unusable

-- Kill goose on leave
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    local status_ok, goose = pcall(require, "goose")
    if status_ok and goose and goose.cook then
      goose.cook()
    end
  end,
})

-- Kill goose on window resize
vim.api.nvim_create_autocmd("VimResized", {
  callback = function()
    local status_ok, goose = pcall(require, "goose")
    if status_ok and goose and goose.cook then
      goose.cook()
    end
  end,
})

