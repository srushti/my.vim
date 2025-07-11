set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "camouflage"

if version >= 700
  hi CursorLine     guibg=#100A09 cterm=none ctermbg=darkgray
  hi CursorColumn   guibg=#100A09 cterm=none ctermbg=darkgray
  hi MatchParen     guibg=#505050 gui=bold
  hi Pmenu          guifg=yellowgreen guibg=#323232
  hi PmenuSel       guifg=yellowgreen guibg=darkred
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF gui=none
hi Normal           guifg=#D5E285 guibg=#070100 ctermfg=red gui=none
hi NonText          guifg=#4A4A59 gui=none
" hi LineNr           guifg=#7E8841 guibg=#201A19 ctermfg=lightyellow gui=none
hi StatusLine       guifg=#00D2D2 guibg=#38290B ctermfg=cyan gui=italic
hi StatusLineNC     guifg=#00D2D2 guibg=#2F2928 ctermfg=cyan gui=none
hi VertSplit        guifg=#00D2D2 guibg=#201A19 ctermfg=cyan gui=none
hi Folded           guifg=#00D2D2 guibg=#070100 ctermfg=cyan gui=none
hi FoldColumn       guifg=#00D2D2 guibg=#070100 ctermfg=cyan gui=none
hi Title            guifg=#FFCA39 guibg=NONE    gui=bold
hi Visual           guibg=#313131 ctermbg=darkgray gui=none
hi SpecialKey       guifg=#4A4A59 ctermfg=grey gui=none
hi Search           guifg=NONE    guibg=NONE    gui=underline ctermfg=NONE    ctermbg=NONE    cterm=underline
hi Underline                                    gui=none
hi! link Normal @variable
hi! link LineNr PeacockFg

" Syntax highlighting
hi Comment guifg=darkgray gui=none ctermfg=darkgray
hi! Constant guifg=#A5A200
hi Number guifg=#64CC8A gui=none ctermfg=lightgreen
hi Identifier guifg=#96B58E ctermfg=grey gui=none
hi @variable guifg=#D5E285 ctermfg=grey gui=none
" hi @variable guifg=#FAB802 ctermfg=grey gui=none
"hi TelescopeNormal guifg=#96B58E ctermfg=grey gui=none
hi Statement guifg=#815900 gui=none ctermfg=brown
hi Operator guifg=#00D2D2 gui=none ctermfg=cyan
hi Function guifg=#408080 gui=none ctermfg=darkcyan
hi Special guifg=#A52B34 gui=none ctermfg=darkred
hi PreProc guifg=#C94000 gui=none ctermfg=brown
hi Keyword guifg=#009664 ctermfg=darkcyan gui=none
hi String guifg=#4BA5B3 ctermfg=lightblue gui=none
hi Type guifg=#A5A300 gui=none ctermfg=darkyellow
hi Delimiter guifg=#408080 gui=none

hi! link @keyword.import Special
hi! link @keyword.export Special
hi! link @type.builtin Type
hi! link @punctuation.delimiter Normal
hi! link @punctuation.bracket Delimiter
hi! link @variable.builtin Type


" Special for Diff
hi DiffAdd          guifg=NONE  guibg=#002200 ctermbg=darkgreen
hi DiffDelete       guifg=NONE  guibg=#220000 ctermbg=darkred
hi DiffChange       guifg=NONE  guibg=#222222 ctermbg=darkgray
hi DiffText         guifg=NONE  guibg=#31383F ctermbg=darkblue

" Special for JS
hi link jsObjectKey      Identifier

" Special for TS
hi link typescriptObjectLabel Identifier

" Special for Telescope
hi link TelescopeNormal Normal

" For gitgutter
hi clear SignColumn

" For treesitter
hi link @variable                   Identifier

