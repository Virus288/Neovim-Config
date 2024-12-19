hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "reverseGrayScale"

" Base 30 colors
hi Normal guifg=#1E1E1E guibg=#F0F0F0
hi Comment guifg=#7F7F7F
hi Constant guifg=#575757
hi Identifier guifg=#050505
hi Statement guifg=#4D4D4D
hi PreProc guifg=#4F4F4F
hi Type guifg=#1A1A1A
hi Special guifg=#141414
hi Underlined guifg=#050505
hi Todo guifg=#050505 guibg=#7A7A7A
hi String guifg=#484848
hi Function guifg=#050505
hi Conditional guifg=#4D4D4D
hi Repeat guifg=#4D4D4D
hi Operator guifg=#050505
hi Structure guifg=#050505
hi LineNr guifg=#737373 guibg=#F0F0F0
hi CursorLineNr guifg=#050505 guibg=#F0F0F0
hi VertSplit guifg=#7A7A7A guibg=#F0F0F0
hi StatusLine guifg=#4D4D4D guibg=#CDCDCD
hi StatusLineNC guifg=#7F7F7F guibg=#CDCDCD
hi Pmenu guifg=#050505 guibg=#C1C1C1
hi PmenuSel guifg=#F0F0F0 guibg=#4D4D4D
hi PmenuSbar guifg=#C1C1C1 guibg=#C1C1C1
hi PmenuThumb guifg=#4D4D4D guibg=#4D4D4D

" Base 16 colors
hi Normal guifg=#404040 guibg=#F0F0F0
hi Comment guifg=#B7B7B7
hi Constant guifg=#575757
hi Identifier guifg=#050505
hi Statement guifg=#4D4D4D
hi PreProc guifg=#4F4F4F
hi Type guifg=#080808
hi Special guifg=#141414
hi Underlined guifg=#050505
hi Todo guifg=#050505 guibg=#7A7A7A
hi String guifg=#484848
hi Function guifg=#050505
hi Conditional guifg=#4D4D4D
hi Repeat guifg=#4D4D4D
hi Operator guifg=#050505
hi Structure guifg=#050505
hi LineNr guifg=#737373 guibg=#F0F0F0
hi CursorLineNr guifg=#050505 guibg=#F0F0F0
hi VertSplit guifg=#7A7A7A guibg=#F0F0F0
hi StatusLine guifg=#4D4D4D guibg=#CDCDCD
hi StatusLineNC guifg=#7F7F7F guibg=#CDCDCD
hi Pmenu guifg=#050505 guibg=#C1C1C1
hi PmenuSel guifg=#F0F0F0 guibg=#4D4D4D
hi PmenuSbar guifg=#C1C1C1 guibg=#C1C1C1
hi PmenuThumb guifg=#4D4D4D guibg=#4D4D4D

" Treesitter highlights
hi @variable guifg=#2E2E2E
hi @property guifg=#1F1F1F
hi @variable.builtin guifg=#575757
