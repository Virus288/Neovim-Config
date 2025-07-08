vim.cmd("highlight clear")
vim.o.termguicolors = true
vim.g.colors_name = "flat_remix"

local palette = {
  main_bg       = "#e4e4e7",
  main_fg       = "#737680",
  title         = "#272a34",
  hi_fg         = "#999999",
  selected_bg   = "#b8174c",
  selected_fg   = "#ffffff",
  inactive_fg   = "#666666",
  proc_misc     = "#367bf0",
  cpu_box       = "#367bf0",
  mem_box       = "#19a187",
  net_box       = "#fd3535",
  proc_box      = "#4aaee6",
  div_line      = "#888888",

  temp_start    = "#367bf0",
  temp_mid      = "#b8174c",
  temp_end      = "#d41919",

  cpu_start     = "#367bf0",
  cpu_mid       = "#4aaee6",
  cpu_end       = "#54bd8e",

  free_start    = "#811035",
  free_mid      = "#b8174c",
  free_end      = "#d41919",

  cached_start  = "#2656a8",
  cached_mid    = "#4aaee6",
  cached_end    = "#23bac2",

  available_start = "#fea44c",
  available_mid   = "#fd7d00",
  available_end   = "#fe7171",

  used_start    = "#12715f",
  used_mid      = "#19a187",
  used_end      = "#23bac2",

  download_start = "#367bf0",
  download_mid   = "#19a187",
  download_end   = "#4aaee6",

  upload_start   = "#8c42ab",
  upload_mid     = "#b8174c",
  upload_end     = "#d41919",
}

-- Basic UI groups
vim.api.nvim_set_hl(0, "Normal",      { fg = palette.main_fg, bg = palette.main_bg })
vim.api.nvim_set_hl(0, "Comment",     { fg = palette.inactive_fg, italic = true })
vim.api.nvim_set_hl(0, "Visual",      { fg = palette.selected_fg, bg = palette.selected_bg })
vim.api.nvim_set_hl(0, "CursorLine",  { bg = "#dddddd" })
vim.api.nvim_set_hl(0, "CursorColumn",{ bg = "#dddddd" })
vim.api.nvim_set_hl(0, "LineNr",      { fg = palette.inactive_fg })
vim.api.nvim_set_hl(0, "Title",       { fg = palette.title, bold = true })
vim.api.nvim_set_hl(0, "VertSplit",   { fg = palette.div_line })
vim.api.nvim_set_hl(0, "StatusLine",  { fg = palette.main_fg, bg = palette.proc_box })
vim.api.nvim_set_hl(0, "Search",      { fg = palette.selected_fg, bg = palette.hi_fg })
vim.api.nvim_set_hl(0, "IncSearch",   { fg = palette.main_bg, bg = palette.proc_misc })
vim.api.nvim_set_hl(0, "Pmenu",       { fg = palette.main_fg, bg = palette.proc_box })
vim.api.nvim_set_hl(0, "PmenuSel",    { fg = palette.selected_fg, bg = palette.selected_bg })
vim.api.nvim_set_hl(0, "String",      { fg = palette.download_mid })
vim.api.nvim_set_hl(0, "Function",    { fg = palette.cpu_mid })
vim.api.nvim_set_hl(0, "Identifier",  { fg = palette.upload_mid })
vim.api.nvim_set_hl(0, "Keyword",     { fg = palette.cached_mid, bold = true })
vim.api.nvim_set_hl(0, "Type",        { fg = palette.mem_box })
vim.api.nvim_set_hl(0, "Constant",    { fg = palette.temp_end })
