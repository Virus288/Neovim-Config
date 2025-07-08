vim.cmd("highlight clear")
vim.o.termguicolors = true
vim.g.colors_name = "whiteout"

local palette = {
  main_bg       = "#ffffff",
  main_fg       = "#303030",
  title         = "#101010",
  hi_fg         = "#284d75",
  selected_bg   = "#15283d",
  selected_fg   = "#ffffff",
  inactive_fg   = "#adadad",
  proc_misc     = "#03521d",
  cpu_box       = "#1a361e",
  mem_box       = "#3d3c14",
  net_box       = "#1a1742",
  proc_box      = "#3b1515",
  div_line      = "#808080",

  temp_start    = "#184567",
  temp_mid      = "#122c87",
  temp_end      = "#9e0061",

  cpu_start     = "#0b8e44",
  cpu_mid       = "#a49104",
  cpu_end       = "#8d0202",

  free_start    = "#b0d090",
  free_mid      = "#70ba26",
  free_end      = "#496600",

  cached_start  = "#26c5ff",
  cached_mid    = "#74e6fc",
  cached_end    = "#0b1a29",

  available_start = "#ffb814",
  available_mid   = "#ffd77a",
  available_end   = "#292107",

  used_start    = "#ff4769",
  used_mid      = "#d9626d",
  used_end      = "#3b1f1c",

  download_start = "#8d82de",
  download_mid   = "#413786",
  download_end   = "#130f29",

  upload_start   = "#f590f9",
  upload_mid     = "#722e76",
  upload_end     = "#2b062d",
}

vim.api.nvim_set_hl(0, "Normal",      { fg = palette.main_fg, bg = palette.main_bg })
vim.api.nvim_set_hl(0, "Comment",     { fg = palette.inactive_fg, italic = true })
vim.api.nvim_set_hl(0, "Visual",      { fg = palette.selected_fg, bg = palette.selected_bg })
vim.api.nvim_set_hl(0, "CursorLine",  { bg = "#f0f0f0" })
vim.api.nvim_set_hl(0, "CursorColumn",{ bg = "#f0f0f0" })
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
