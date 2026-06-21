" =============================================================================
" Name:        tmac2k.vim
" Description: A purple-to-blue spectrum dark theme
" Instructions: Install to ~/.vim/colors/ and enable in ~/.vimrc
" =============================================================================

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "tmac2k"

" =============================================================================
" PALETTE REFERENCE
" =============================================================================
" background       #000000   Pure black
" foreground       #d1d1d1   Light gray (normal text)
" cursor           #d1d1d1
" selection_bg     #2f2f2f
" selection_fg     #d1d1d1
"
" palette[0/8]     #2f2f2f   Dark gray (UI chrome)
" palette[1/9]     #ba5aff   Violet       -> Keywords, operators
" palette[2/10]    #905aff   Purple       -> Statements, defines
" palette[3/11]    #685aff   Blue-purple  -> Types, class names
" palette[4/12]    #5c78ff   Periwinkle   -> Functions, methods
" palette[5/13]    #5ea2ff   Sky blue     -> Strings, imports
" palette[6/14]    #5ac8ff   Cyan         -> Constants, numbers
" palette[7/15]    #ffffff   White        -> Bold / bright text
" =============================================================================

" Helper: hi Group guifg guibg gui    cterm
" -----------------------------------------------------------------------------

" --- UI Chrome ---------------------------------------------------------------
hi Normal           guifg=#d1d1d1   guibg=#000000   gui=NONE        cterm=NONE
hi NormalNC         guifg=#d1d1d1   guibg=#0a0a0a   gui=NONE        cterm=NONE
hi LineNr           guifg=#2f2f2f   guibg=NONE      gui=NONE        cterm=NONE
hi CursorLine       guifg=NONE      guibg=#0f0f0f   gui=NONE        cterm=NONE
hi CursorLineNr     guifg=#685aff   guibg=NONE      gui=bold        cterm=bold
hi CursorColumn     guifg=NONE      guibg=#0f0f0f   gui=NONE        cterm=NONE
hi ColorColumn      guifg=NONE      guibg=#0f0f0f   gui=NONE        cterm=NONE
hi SignColumn       guifg=#2f2f2f   guibg=#000000   gui=NONE        cterm=NONE
hi VertSplit        guifg=#2f2f2f   guibg=#000000   gui=NONE        cterm=NONE
hi StatusLine       guifg=#d1d1d1   guibg=#2f2f2f   gui=NONE        cterm=NONE
hi StatusLineNC     guifg=#2f2f2f   guibg=#0f0f0f   gui=NONE        cterm=NONE
hi TabLine          guifg=#d1d1d1   guibg=#2f2f2f   gui=NONE        cterm=NONE
hi TabLineFill      guifg=NONE      guibg=#0f0f0f   gui=NONE        cterm=NONE
hi TabLineSel       guifg=#ffffff   guibg=#685aff   gui=bold        cterm=bold
hi Folded           guifg=#5c78ff   guibg=#0f0f0f   gui=italic      cterm=NONE
hi FoldColumn       guifg=#5c78ff   guibg=#000000   gui=NONE        cterm=NONE

" --- Selection / Search ------------------------------------------------------
hi Visual           guifg=#d1d1d1   guibg=#2f2f2f   gui=NONE        cterm=NONE
hi VisualNOS        guifg=#d1d1d1   guibg=#2f2f2f   gui=NONE        cterm=NONE
hi Search           guifg=#000000   guibg=#ba5aff   gui=NONE        cterm=NONE
hi IncSearch        guifg=#000000   guibg=#5ac8ff   gui=bold        cterm=bold
hi MatchParen       guifg=#5ac8ff   guibg=NONE      gui=bold,underline cterm=bold

" --- Cursor ------------------------------------------------------------------
hi Cursor           guifg=#000000   guibg=#d1d1d1   gui=NONE        cterm=NONE
hi iCursor          guifg=#000000   guibg=#5ac8ff   gui=NONE        cterm=NONE
hi vCursor          guifg=#000000   guibg=#ba5aff   gui=NONE        cterm=NONE

" --- Popup / Menu ------------------------------------------------------------
hi Pmenu            guifg=#d1d1d1   guibg=#2f2f2f   gui=NONE        cterm=NONE
hi PmenuSel         guifg=#ffffff   guibg=#685aff   gui=bold        cterm=bold
hi PmenuSbar        guifg=NONE      guibg=#0f0f0f   gui=NONE        cterm=NONE
hi PmenuThumb       guifg=NONE      guibg=#5c78ff   gui=NONE        cterm=NONE
hi WildMenu         guifg=#ffffff   guibg=#5c78ff   gui=bold        cterm=bold

" --- Messages / Prompts ------------------------------------------------------
hi ModeMsg          guifg=#5ac8ff   guibg=NONE      gui=bold        cterm=bold
hi MoreMsg          guifg=#5ac8ff   guibg=NONE      gui=bold        cterm=bold
hi Question         guifg=#5ea2ff   guibg=NONE      gui=bold        cterm=bold
hi WarningMsg       guifg=#ba5aff   guibg=NONE      gui=bold        cterm=bold
hi ErrorMsg         guifg=#ffffff   guibg=#ba5aff   gui=bold        cterm=bold

" --- Diff --------------------------------------------------------------------
hi DiffAdd          guifg=#905aff   guibg=#0a0a1a   gui=NONE        cterm=NONE
hi DiffChange       guifg=#5ea2ff   guibg=#0a0a1a   gui=NONE        cterm=NONE
hi DiffDelete       guifg=#ba5aff   guibg=#0a0a0a   gui=NONE        cterm=NONE
hi DiffText         guifg=#5ac8ff   guibg=#0a0a1a   gui=bold        cterm=bold

" --- Spelling ----------------------------------------------------------------
hi SpellBad         guifg=#ba5aff   guibg=NONE      gui=undercurl   cterm=underline
hi SpellCap         guifg=#5c78ff   guibg=NONE      gui=undercurl   cterm=underline
hi SpellRare        guifg=#685aff   guibg=NONE      gui=undercurl   cterm=underline
hi SpellLocal       guifg=#5ea2ff   guibg=NONE      gui=undercurl   cterm=underline

" --- Misc UI -----------------------------------------------------------------
hi NonText          guifg=#2f2f2f   guibg=NONE      gui=NONE        cterm=NONE
hi SpecialKey       guifg=#2f2f2f   guibg=NONE      gui=NONE        cterm=NONE
hi EndOfBuffer      guifg=#2f2f2f   guibg=NONE      gui=NONE        cterm=NONE
hi Directory        guifg=#5c78ff   guibg=NONE      gui=bold        cterm=bold
hi Title            guifg=#ba5aff   guibg=NONE      gui=bold        cterm=bold
hi Conceal          guifg=#685aff   guibg=NONE      gui=NONE        cterm=NONE

" =============================================================================
" SYNTAX HIGHLIGHTING
" =============================================================================

" --- Core syntax groups ------------------------------------------------------
"  Comment        -> dark gray / muted (de-emphasized, italic)
"  Constant        -> cyan  (#5ac8ff)  numbers, booleans, nil
"  String          -> sky blue (#5ea2ff)
"  Character       -> sky blue
"  Number          -> cyan
"  Boolean         -> cyan
"  Float           -> cyan
"  Identifier      -> light gray (normal text)
"  Function        -> periwinkle (#5c78ff)
"  Statement       -> violet (#ba5aff)   if/else/return/for…
"  Conditional     -> violet
"  Repeat          -> violet
"  Label           -> violet
"  Operator        -> violet
"  Keyword         -> violet
"  Exception       -> violet
"  PreProc         -> sky blue (#5ea2ff)  import/from/#include
"  Include         -> sky blue
"  Define          -> purple (#905aff)
"  Macro           -> purple
"  PreCondit       -> sky blue
"  Type            -> blue-purple (#685aff)
"  StorageClass    -> blue-purple
"  Structure       -> blue-purple
"  Typedef         -> blue-purple
"  Special         -> cyan (#5ac8ff)
"  SpecialChar     -> cyan
"  Tag             -> periwinkle
"  Delimiter       -> light gray
"  SpecialComment  -> purple italic
"  Debug           -> violet
"  Underlined      -> sky blue underlined
"  Error           -> white on violet
"  Todo            -> black on cyan bold

hi Comment          guifg=#2f2f2f   guibg=NONE      gui=italic      cterm=italic
" Make comments slightly brighter so they're readable on pure black
hi Comment          guifg=#555555   guibg=NONE      gui=italic      cterm=italic

hi Constant         guifg=#5ac8ff   guibg=NONE      gui=NONE        cterm=NONE
hi String           guifg=#5ea2ff   guibg=NONE      gui=NONE        cterm=NONE
hi Character        guifg=#5ea2ff   guibg=NONE      gui=NONE        cterm=NONE
hi Number           guifg=#5ac8ff   guibg=NONE      gui=NONE        cterm=NONE
hi Boolean          guifg=#5ac8ff   guibg=NONE      gui=bold        cterm=bold
hi Float            guifg=#5ac8ff   guibg=NONE      gui=NONE        cterm=NONE

hi Identifier       guifg=#d1d1d1   guibg=NONE      gui=NONE        cterm=NONE
hi Function         guifg=#5c78ff   guibg=NONE      gui=NONE        cterm=NONE

hi Statement        guifg=#ba5aff   guibg=NONE      gui=NONE        cterm=NONE
hi Conditional      guifg=#ba5aff   guibg=NONE      gui=NONE        cterm=NONE
hi Repeat           guifg=#ba5aff   guibg=NONE      gui=NONE        cterm=NONE
hi Label            guifg=#ba5aff   guibg=NONE      gui=NONE        cterm=NONE
hi Operator         guifg=#ba5aff   guibg=NONE      gui=NONE        cterm=NONE
hi Keyword          guifg=#ba5aff   guibg=NONE      gui=NONE        cterm=NONE
hi Exception        guifg=#ba5aff   guibg=NONE      gui=bold        cterm=bold

hi PreProc          guifg=#5ea2ff   guibg=NONE      gui=NONE        cterm=NONE
hi Include          guifg=#5ea2ff   guibg=NONE      gui=NONE        cterm=NONE
hi Define           guifg=#905aff   guibg=NONE      gui=NONE        cterm=NONE
hi Macro            guifg=#905aff   guibg=NONE      gui=NONE        cterm=NONE
hi PreCondit        guifg=#5ea2ff   guibg=NONE      gui=NONE        cterm=NONE

hi Type             guifg=#685aff   guibg=NONE      gui=NONE        cterm=NONE
hi StorageClass     guifg=#685aff   guibg=NONE      gui=NONE        cterm=NONE
hi Structure        guifg=#685aff   guibg=NONE      gui=NONE        cterm=NONE
hi Typedef          guifg=#685aff   guibg=NONE      gui=bold        cterm=bold

hi Special          guifg=#5ac8ff   guibg=NONE      gui=NONE        cterm=NONE
hi SpecialChar      guifg=#5ac8ff   guibg=NONE      gui=NONE        cterm=NONE
hi Tag              guifg=#5c78ff   guibg=NONE      gui=NONE        cterm=NONE
hi Delimiter        guifg=#d1d1d1   guibg=NONE      gui=NONE        cterm=NONE
hi SpecialComment   guifg=#905aff   guibg=NONE      gui=italic      cterm=italic
hi Debug            guifg=#ba5aff   guibg=NONE      gui=NONE        cterm=NONE

hi Underlined       guifg=#5ea2ff   guibg=NONE      gui=underline   cterm=underline
hi Ignore           guifg=#2f2f2f   guibg=NONE      gui=NONE        cterm=NONE
hi Error            guifg=#ffffff   guibg=#ba5aff   gui=bold        cterm=bold
hi Todo             guifg=#000000   guibg=#5ac8ff   gui=bold        cterm=bold

" =============================================================================
" LANGUAGE-SPECIFIC OVERRIDES
" =============================================================================

" --- Python ------------------------------------------------------------------
hi link pythonBuiltin        Constant
hi link pythonBuiltinObj     Type
hi link pythonBuiltinFunc    Function
hi link pythonFunction       Function
hi link pythonDecorator      PreProc
hi link pythonDecoratorName  PreProc
hi link pythonImport         Include
hi link pythonStatement      Keyword
hi link pythonConditional    Conditional
hi link pythonRepeat         Repeat
hi link pythonException      Exception
hi link pythonOperator       Operator
hi link pythonClass          Type
hi link pythonSelf           Special
hi link pythonDottedName     Identifier

" --- JavaScript / TypeScript -------------------------------------------------
hi link jsFunction           Keyword
hi link jsFuncName           Function
hi link jsArrowFunction      Operator
hi link jsImport             Include
hi link jsExport             Include
hi link jsModuleKeyword      Include
hi link jsClassKeyword       Keyword
hi link jsThis               Special
hi link jsSuper              Special
hi link jsNull               Constant
hi link jsUndefined          Constant
hi link jsBooleanTrue        Boolean
hi link jsBooleanFalse       Boolean
hi link jsTemplateBraces     Special
hi link typescriptImport     Include
hi link typescriptExport     Include
hi link typescriptType       Type
hi link typescriptInterface  Type
hi link typescriptKeyword    Keyword
hi link typescriptVariable   StorageClass

" --- HTML / CSS --------------------------------------------------------------
hi link htmlTag              Delimiter
hi link htmlEndTag           Delimiter
hi link htmlTagName          Type
hi link htmlArg              Identifier
hi link htmlSpecialChar      SpecialChar
hi link cssClassName         Function
hi link cssClassNameDot      Operator
hi link cssProp              Identifier
hi link cssValueLength       Number
hi link cssColor             Constant
hi link cssAtRule            PreProc

" --- Markdown ----------------------------------------------------------------
hi link markdownH1           Title
hi link markdownH2           Title
hi link markdownH3           Function
hi link markdownCode         String
hi link markdownCodeBlock    String
hi link markdownBold         Special
hi link markdownItalic       Comment
hi link markdownUrl          Underlined
hi link markdownLink         Function
hi link markdownLinkText     Identifier

" --- Git / Diff (fugitive) ---------------------------------------------------
hi link gitcommitSummary     Title
hi link gitcommitType        Keyword
hi link gitcommitFile        Identifier
hi link diffAdded            DiffAdd
hi link diffRemoved          DiffDelete
hi link diffChanged          DiffChange

" =============================================================================
" TERMINAL COLORS  (Neovim / Vim 8+)
" =============================================================================
if has('termguicolors') || has('nvim')
  let g:terminal_color_0  = '#2f2f2f'
  let g:terminal_color_1  = '#ba5aff'
  let g:terminal_color_2  = '#905aff'
  let g:terminal_color_3  = '#685aff'
  let g:terminal_color_4  = '#5c78ff'
  let g:terminal_color_5  = '#5ea2ff'
  let g:terminal_color_6  = '#5ac8ff'
  let g:terminal_color_7  = '#ffffff'
  let g:terminal_color_8  = '#2f2f2f'
  let g:terminal_color_9  = '#ba5aff'
  let g:terminal_color_10 = '#905aff'
  let g:terminal_color_11 = '#685aff'
  let g:terminal_color_12 = '#5c78ff'
  let g:terminal_color_13 = '#5ea2ff'
  let g:terminal_color_14 = '#5ac8ff'
  let g:terminal_color_15 = '#ffffff'
endif

" vim: set ft=vim sw=2 ts=2:
