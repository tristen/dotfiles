" Vim color file
"
" Author: tristen <@fallsemo>

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='fallsemo'

hi Normal         guifg=#93a1a1 ctermfg=247  guibg=#121212 ctermbg=233  gui=none cterm=none
hi Cursor         guifg=#121212 ctermfg=233  guibg=#F8F8F0 ctermbg=255  gui=none cterm=none
hi Boolean        guifg=#87D7D7 ctermfg=159  gui=none cterm=none
hi Constant       guifg=#87D7D7 ctermfg=159  gui=bold cterm=bold
hi Character      guifg=#D7D787 ctermfg=186  gui=none cterm=none
hi Debug          guifg=#BCA3A3 ctermfg=248  gui=bold cterm=bold
hi Delimter       guifg=#8F8F8F ctermfg=245  gui=none cterm=none
hi DiffAdd                                   guibg=#13354A ctermbg=236  gui=none cterm=none
hi DiffChange     guifg=#89807D ctermfg=244  guibg=#4C4745 ctermbg=238  gui=none cterm=none
hi DiffText                                  guibg=#4C4745 ctermbg=238  gui=italic cterm=none
hi Error          guifg=#FF005F ctermfg=197  guibg=#080808 ctermbg=232  gui=none cterm=none
hi Function       guifg=#AFD700 ctermfg=148  gui=none cterm=none
hi Directory      guifg=#AFD700 ctermfg=148  gui=none cterm=none
hi SignColumn     guifg=#AFD700 ctermfg=148  guibg=#232526 ctermbg=235  gui=none cterm=none
hi Conditional    guifg=#FF005F ctermfg=197
hi ErrorMsg       guifg=#FF5F5F ctermfg=203  guibg=#232526 ctermbg=235  gui=bold cterm=bold
hi Statement      guifg=#D7575F ctermfg=203
hi Tag            guifg=#D7575F ctermfg=203  gui=italic cterm=none
hi Comment        guifg=#465457 ctermfg=240
hi SpecialComment guifg=#465457 ctermfg=241  gui=bold cterm=bold
hi Identifier     guifg=#FFD700 ctermfg=220  gui=none cterm=none
hi StorageClass   guifg=#FFD700 ctermfg=220  gui=italic cterm=none
hi Ignore         guifg=#121212 ctermfg=233  gui=none cterm=none
hi Macro          guifg=#C4BE89 ctermfg=180  gui=italic cterm=none
hi Define         guifg=#005FAF ctermfg=33   gui=none cterm=none
hi Type           guifg=#005FAF ctermfg=33   gui=none cterm=none
hi WildMenu       guifg=#005FAF ctermfg=33   guibg=#000000 ctermbg=16   gui=none cterm=none
hi Special        guifg=#005FAF ctermfg=33   gui=italic cterm=none
hi MatchParen     guifg=#000000 ctermfg=16   guibg=#FD971F ctermbg=208  gui=bold cterm=bold
hi ModeMsg        guifg=#E6DB74 ctermfg=186  gui=none cterm=none
hi PmenuSel                                  guibg=#808080 ctermbg=244  gui=none cterm=none
hi Search         guifg=#FFFFFF ctermfg=231  guibg=#455354 ctermbg=239  gui=none cterm=none
hi Underlined     guifg=#808080 ctermfg=244  gui=underline cterm=underline
hi Title          guifg=#EEEEEE ctermfg=255  gui=none cterm=none
hi Todo           guifg=#FFFFFF ctermfg=15   guibg=none ctermbg=none    gui=underline cterm=underline
hi WarningMsg     guifg=#FFFFFF ctermfg=231  guibg=#262626 ctermbg=235  gui=bold cterm=bold

hi link Number        Boolean
hi link Float         Boolean
hi link String        Character
hi link Label         Character
hi link Keyword       Conditional
hi link Repeat        Conditional
hi link Operator      Conditional
hi link CursorColumn  CursorLine
hi link Exception     Directory
hi link PreCondit     Directory
hi link DiffDelete    Error
hi link PreProc       Function
hi link SpecialChar   Statement
hi link VertSplit     LineNr
hi link Folded        FoldColumn
hi link IncSearch     Macro
hi link Typedef       Type
hi link Structure     Type
hi link Pmenu         WildMenu
hi link Question      Special
hi link SpecialKey    Special
hi link MoreMsg       ModeMsg
hi link PmenuSbar     PmenuSel
hi link VisualNOS     Visual


" == Editor Aesthetics ====================================

hi VertSplit      guifg=#1C1C1C ctermfg=234  guibg=#1C1C1C ctermbg=234
hi StatusLine     guifg=#808080 ctermfg=244  guibg=#808080 ctermbg=234  gui=none cterm=none
hi StatusLineNC   guifg=#455354 ctermfg=239  guibg=#080808 ctermbg=234  gui=none cterm=none
hi Visual         guifg=#465457 ctermfg=240  guibg=#1C1C1C ctermbg=234  gui=none cterm=none
hi LineNr         guifg=#303030 ctermfg=236  gui=none cterm=none
hi Folded         guifg=#FFFFFF ctermfg=255  guibg=#435435 ctermbg=25
hi FoldColumn     guifg=#FFFFFF ctermfg=255  guibg=#435435 ctermbg=25
hi CursorLine     guibg=#1C1C1C ctermbg=234  cterm=none

" == Language Specific Highlighting =======================

" html
hi link htmlTag                 Tag
hi link htmlSpecialTagName      Tag
hi link htmlEndTag              Tag
hi link htmlArg                 Function

hi htmlBoldItalic               gui=bold,italic             cterm=bold,italic
hi htmlBoldUnderline            gui=bold,underline          cterm=bold,underline
hi htmlBoldUnderlineItalic      gui=bold,underline,italic   cterm=bold,underline,italic
hi htmlItalic                   gui=italic                  cterm=italic
hi htmlUnderline                gui=underline               cterm=underline
hi htmlUnderlineItalic          gui=underline,italic        cterm=underline,italic

" css
hi link cssImportant            Error
hi link cssPseudoClass          Tag
hi link cssStringQ              Boolean
hi link cssAttr                 Boolean
hi link cssFontAttr             Boolean
hi link cssCommonAttr           Boolean
hi link cssColor                Boolean
hi link cssDefinition           Boolean
hi link cssStringQQ             Boolean
hi link cssProp                 Define
hi link cssTextProp             Define
hi link cssFontProp             Define
hi link cssBoxProp              Define
hi link cssRenderProp           Define
hi link cssColorProp            Define
hi link cssTableProp            Define
hi link cssUiProp               Define
hi link cssGeneratedContentProp Define

" Javascript
hi link javaScriptNumber         Boolean
hi link javaScriptRegexpString   Boolean
hi link javaScriptPrototype      Type         " prototype
hi link javaScriptType           Type         " const undefined void yield 
hi link javaScriptIdentifier     Identifier   " var this
hi link javaScriptLabel          Label        " length
hi link javaScriptGlobalObjects  Class
hi link javaScriptFunction       Keyword
hi link javaScriptSource         Keyword      " import export
hi link javaScriptOperator       Keyword      " delete new in instanceof let typeof
hi link javaScriptBoolean        Keyword      " true false
hi link javaScriptNull           Keyword      " null
hi link javaScriptConditional    Keyword      " if else
hi link javaScriptRepeat         Keyword      " do while for
hi link javaScriptBranch         Keyword      " break continue switch case default return
hi link javaScriptStatement      Keyword      " try catch throw with finally
