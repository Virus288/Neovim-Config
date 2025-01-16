local function trigger_screensaver()
  if vim.fn.mode() == "c" then
    return
  end

  require("duck").hatch()
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

vim.keymap.set('n', '<leader>mq', function() require("duck").hatch() end, {})
vim.keymap.set('n', '<leader>mw', function() require("duck").cook() end, {})
vim.keymap.set('n', '<leader>me', function() require("duck").cook_all() end, {})

-- Below hooks are required, because duck plugin seems to be throwing hundreds of errors on resize / :q, making neovim unusable

-- Kill ducks on leave
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    local status_ok, duck = pcall(require, "duck")
    if status_ok and duck and duck.cook_all then
      duck.cook_all()
    end
  end,
  desc = "Cook all ducks before exiting Neovim",
})

-- Kill ducs on window resize
vim.api.nvim_create_autocmd("VimResized", {
  callback = function()
    local status_ok, duck = pcall(require, "duck")
    if status_ok and duck and duck.cook_all then
      duck.cook_all()
    end
  end,
  desc = "Cook all ducks on window resize",
})
