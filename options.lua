require "nvchad.options"

local opt = vim.opt
local env = vim.env

-- opt.confirm = false -- confirm changes before exiting a buffer
-- opt.autowrite = true -- enable auto-write

opt.history = 1000 -- store the last 1000 commands entered
-- opt.textwidth = 120 -- after configured number of characters, wrap line

opt.inccommand = "split"

opt.backspace = { "indent", "eol,start" } -- make backspace behave in a sane manner
-- opt.mouse = "a" -- set mouse mode to all modes

opt.ignorecase = true -- case insensitive searching
opt.smartcase = true -- case-sensitive if expresson contains a capital letter
opt.hlsearch = true -- highlight search results
opt.incsearch = true -- set incremental search, like modern browsers

opt.magic = true -- set magic on, for regular expressions

-- Relative numbers
opt.number = true
opt.relativenumber = true

opt.hidden = false -- allow background buffers
opt.joinspaces = false -- join lines without two spaces
opt.wrap = true -- turn on line wrapping
opt.wrapmargin = 8 -- wrap lines when coming within n characters from side
opt.linebreak = true -- set soft wrapping
opt.showbreak = "↪"
opt.autoindent = true -- automatically set indent of new line
-- opt.ttyfast = true -- faster redrawing
table.insert(opt.diffopt, "vertical")
table.insert(opt.diffopt, "iwhite")
table.insert(opt.diffopt, "internal")
table.insert(opt.diffopt, "algorithm:patience")
table.insert(opt.diffopt, "hiddenoff")
opt.laststatus = 3 -- show the global statusline all the time
opt.scrolloff = 7 -- set 7 lines to the cursors - when moving vertical
opt.wildmenu = true -- enhanced command line completion
opt.hidden = true -- current buffer can be put into background
opt.showcmd = true -- show incomplete commands
opt.showmode = true -- show which mode
opt.wildmode = { "list", "longest" } -- complete files like a shell
opt.shell = env.SHELL
opt.cmdheight = 0 -- hide command bar when not used
opt.title = true -- set terminal title
opt.showmatch = true -- show matching braces
opt.mat = 2 -- how many tenths of a second to blink
opt.updatetime = 200 -- save swap file
opt.signcolumn = "yes" -- show the sign column
-- opt.shortmess = "atToOFc" -- prompt message options
opt.sidescrolloff = 8

-- Tab control
opt.expandtab = true -- use spaces intead of tabs
opt.smarttab = true -- tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
opt.tabstop = 4 -- the visible width of tabs
opt.softtabstop = 4 -- edit as if the tabs are 4 characters wide
opt.shiftwidth = 4 -- number of spaces to use for indent and unindent
opt.shiftround = true -- round indent to a multiple of 'shiftwidth'

-- code folding settings
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.foldnestmax = 10 -- deepest fold is 10 levels
opt.foldenable = false -- don't fold by default
opt.foldlevel = 1

opt.virtualedit = "block"

opt.undofile = true

-- toggle invisible characters
opt.list = true
opt.listchars = {
  -- tab = "→ ",
  tab = "   ",
  -- eol = "¬",
  trail = "⋅",
  extends = "❯",
  precedes = "❮",
}

-- hide the ~ character on empty lines at the end of the buffer
opt.fcs = "eob: "
