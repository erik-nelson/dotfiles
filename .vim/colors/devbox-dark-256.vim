" Vim color file
" Name: devbox-dark-256
" Author: Dee Sub Wun

let g:colors_name="devbox-dark-256"

let c_gnu = 1

""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""
hi Constant         cterm=NONE              ctermfg=84         ctermbg=NONE
hi String           cterm=NONE              ctermfg=208         ctermbg=NONE
hi Character        cterm=NONE              ctermfg=84         ctermbg=NONE
hi Number           cterm=NONE              ctermfg=84         ctermbg=NONE
hi Boolean          cterm=NONE              ctermfg=208         ctermbg=NONE
hi Float            cterm=NONE              ctermfg=208         ctermbg=NONE
hi Comment          cterm=NONE              ctermfg=245          ctermbg=NONE

hi Identifier       cterm=NONE              ctermfg=162         ctermbg=NONE
hi Function         cterm=NONE              ctermfg=84         ctermbg=NONE

hi Statement        cterm=NONE              ctermfg=162         ctermbg=NONE
hi Conditional      cterm=bold              ctermfg=111         ctermbg=NONE
hi Repeat           cterm=NONE              ctermfg=84         ctermbg=NONE
hi Label            cterm=bold              ctermfg=162         ctermbg=NONE
hi Operator         cterm=NONE              ctermfg=84         ctermbg=NONE
hi Keyword          cterm=NONE              ctermfg=84         ctermbg=NONE
hi Exception        cterm=NONE              ctermfg=162         ctermbg=NONE

hi PreProc          cterm=NONE              ctermfg=84         ctermbg=NONE
hi Include          cterm=NONE              ctermfg=84         ctermbg=NONE
hi Define           cterm=NONE              ctermfg=84         ctermbg=NONE
hi Macro            cterm=NONE              ctermfg=84         ctermbg=NONE
hi PreCondit        cterm=NONE              ctermfg=84         ctermbg=NONE

hi Type             cterm=NONE              ctermfg=162         ctermbg=NONE
hi StorageClass     cterm=NONE              ctermfg=162         ctermbg=NONE
hi Structure        cterm=NONE              ctermfg=111         ctermbg=NONE
hi Typedef          cterm=NONE              ctermfg=84         ctermbg=NONE

hi Special          cterm=NONE              ctermfg=162          ctermbg=NONE
hi SpecialChar      cterm=NONE              ctermfg=15          ctermbg=NONE
hi Tag              cterm=NONE              ctermfg=84         ctermbg=NONE
hi Delimiter        cterm=NONE              ctermfg=15          ctermbg=NONE
hi SpecialComment   cterm=NONE              ctermfg=15          ctermbg=NONE
hi Debug            cterm=NONE              ctermfg=15          ctermbg=NONE

hi xmlTagName       cterm=NONE          ctermfg=84      ctermbg=NONE
hi xmlCdata         cterm=NONE          ctermfg=246      ctermbg=NONE
hi xmlAttrib        cterm=NONE          ctermfg=111      ctermbg=NONE
hi htmlTagName      cterm=NONE          ctermfg=84      ctermbg=NONE
hi htmlArg          cterm=NONE          ctermfg=111      ctermbg=NONE
hi htmlItalic    cterm=NONE        ctermfg=253        ctermbg=235

hi Underlined       cterm=underline         ctermfg=123       ctermbg=232

hi Ignore           cterm=NONE              ctermfg=15          ctermbg=NONE

hi Error            cterm=bold              ctermfg=15          ctermbg=9

hi Todo             cterm=NONE              ctermfg=198          ctermbg=84

""""""
" INTERFACE
""""""""""""""""""""""""
hi Cursor           cterm=NONE              ctermfg=white       ctermbg=red
hi CursorLine       cterm=NONE              ctermfg=NONE        ctermbg=232
hi CursorColumn     cterm=NONE              ctermfg=NONE        ctermbg=NONE
hi Directory        cterm=NONE              ctermfg=84         ctermbg=NONE
hi ErrorMsg         cterm=bold              ctermfg=15          ctermbg=9
hi LineNr           cterm=NONE              ctermfg=245         ctermbg=NONE
hi MatchParen       cterm=bold              ctermfg=0           ctermbg=84
hi ModeMsg          cterm=NONE              ctermfg=15          ctermbg=NONE
hi MoreMsg          cterm=NONE              ctermfg=84         ctermbg=NONE
hi NonText          cterm=bold              ctermfg=239         ctermbg=NONE
hi Normal           cterm=NONE              ctermfg=254         ctermbg=NONE
hi Question         cterm=NONE              ctermfg=84         ctermbg=NONE
hi SpecialKey       cterm=NONE              ctermfg=84         ctermbg=NONE
hi Title            cterm=NONE              ctermfg=162         ctermbg=NONE
hi VertSplit        cterm=reverse           ctermfg=0          ctermbg=240
hi WarningMsg       cterm=NONE              ctermfg=9           ctermbg=NONE
hi WildMenu         cterm=NONE              ctermfg=15          ctermbg=236


""""""
" TABS
""""""""""""""""""""""""
hi TabLine          cterm=bold,reverse      ctermfg=0          ctermbg=240
hi TabLineFill      cterm=bold,reverse      ctermfg=0          ctermbg=240
hi TabLineSel       cterm=bold,reverse      ctermfg=0          ctermbg=240


""""""
" COMPLETION
""""""""""""""""""""""""
hi Pmenu            cterm=NONE              ctermfg=208     ctermbg=235
hi PmenuSel         cterm=NONE              ctermfg=40      ctermbg=235

""""""
" STATUS
""""""""""""""""""""""""
hi StatusLine       cterm=bold          ctermfg=84         ctermbg=237
hi StatusLineNC     cterm=bold          ctermfg=84          ctermbg=237


""""""
" DIFF
""""""""""""""""""""""""
hi DiffAdd          cterm=bold                 ctermfg=34          ctermbg=15
hi DiffChange       cterm=bold                 ctermfg=NONE        ctermbg=NONE
hi DiffDelete       cterm=bold                 ctermfg=NONE        ctermbg=196
hi DiffText         cterm=bold                 ctermfg=34         ctermbg=15


""""""
" VISUAL
""""""""""""""""""""""""
hi Visual           cterm=NONE              ctermfg=198           ctermbg=84
hi VisualNOS        cterm=NONE              ctermfg=198           ctermbg=84


""""""
" FOLDING
""""""""""""""""""""""""
hi Folded           cterm=NONE              ctermfg=244     ctermbg=235
hi FoldColumn       cterm=NONE              ctermfg=15          ctermbg=237

""""""
" SEARCH
""""""""""""""""""""""""
hi IncSearch        cterm=NONE              ctermfg=198          ctermbg=84
hi Search           cterm=NONE              ctermfg=198          ctermbg=84

hi YcmErrorSection  cterm=NONE              ctermfg=0             ctermbg=210
"vim: sw=4
