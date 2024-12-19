hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "grayscale"

" Base 30 colors
hi Normal guifg=#D9D9D9 guibg=#1E1E1E
hi Comment guifg=#555555
hi Constant guifg=#A8A8A8
hi Identifier guifg=#FAFAFA
hi Statement guifg=#B3B3B3
hi PreProc guifg=#B0B0B0
hi Type guifg=#E5E5E5
hi Special guifg=#EBEBEB
hi Underlined guifg=#FAFAFA
hi Todo guifg=#FAFAFA guibg=#383838
hi String guifg=#BEBEBE
hi Function guifg=#FAFAFA
hi Conditional guifg=#B3B3B3
hi Repeat guifg=#B3B3B3
hi Operator guifg=#FAFAFA
hi Structure guifg=#FAFAFA
hi LineNr guifg=#4E4E4E guibg=#1E1E1E
hi CursorLineNr guifg=#FAFAFA guibg=#1E1E1E
hi VertSplit guifg=#383838 guibg=#1E1E1E
hi StatusLine guifg=#B3B3B3 guibg=#323232
hi StatusLineNC guifg=#4E4E4E guibg=#323232
hi Pmenu guifg=#FAFAFA guibg=#3E3E3E
hi PmenuSel guifg=#1E1E1E guibg=#B3B3B3
hi PmenuSbar guifg=#3E3E3E guibg=#3E3E3E
hi PmenuThumb guifg=#B3B3B3 guibg=#B3B3B3

" Base 16 colors
hi Normal guifg=#BFBFBF guibg=#1E1E1E
hi Comment guifg=#B7B7B7
hi Constant guifg=#A8A8A8
hi Identifier guifg=#FAFAFA
hi Statement guifg=#B3B3B3
hi PreProc guifg=#B0B0B0
hi Type guifg=#F7F7F7
hi Special guifg=#EBEBEB
hi Underlined guifg=#FAFAFA
hi Todo guifg=#FAFAFA guibg=#383838
hi String guifg=#BEBEBE
hi Function guifg=#FAFAFA
hi Conditional guifg=#B3B3B3
hi Repeat guifg=#B3B3B3
hi Operator guifg=#FAFAFA
hi Structure guifg=#FAFAFA
hi LineNr guifg=#4E4E4E guibg=#1E1E1E
hi CursorLineNr guifg=#FAFAFA guibg=#1E1E1E
hi VertSplit guifg=#383838 guibg=#1E1E1E
hi StatusLine guifg=#B3B3B3 guibg=#323232
hi StatusLineNC guifg=#4E4E4E guibg=#323232
hi Pmenu guifg=#FAFAFA guibg=#3E3E3E
hi PmenuSel guifg=#1E1E1E guibg=#B3B3B3
hi PmenuSbar guifg=#3E3E3E guibg=#3E3E3E
hi PmenuThumb guifg=#B3B3B3 guibg=#B3B3B3

" Treesitter highlights
hi @variable guifg=#D1D1D1
hi @property guifg=#E0E0E0
hi @variable.builtin guifg=#A8A8A8
