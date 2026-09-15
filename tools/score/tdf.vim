" Vim syntax file
" Language:    Task Description Format (TDF)
" Maintainer:  Nachiket Kapre
" Last Change: Sep 29 2009 
" License:     GPL
" derived from Bluespec coloring file
" Make sure you add following two lines to you .vimrc
" au BufNewFile,BufRead *.tdf set ft=tdf
" au BufNewFile,BufRead *.tdfc set ft=tdf


" work with vim < 6.0
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" BSV is case-sensitive
" syntax case match

" SV operators (XXX stolen from verilog.vim)
syntax match tdf_op "[&|~><!)(*/#%@+=?:;}{,.\^\-\[\]]"

" SV identifiers
syntax match tdf_identifier "\<[a-z_][A-za-z_]*\>"


" comments (must be before operators, or else / gets marked as an operator)
syntax keyword tdf_todo XXX FIXME TODO
syntax region  tdf_comment_basic start="//"  end=/$/ contains=tdf_todo
syntax cluster tdf_commentGroup contains=tdf_todo

" A comment can contain cString, cCharacter and cNumber.
" But a "*/" inside a cString in a cComment DOES end the comment!  So we
" need to use a special type of cString: cCommentString, which also ends on
" "*/", and sees a "*" at the start of the line as comment again.
" Unfortunately this doesn't very well work for // type of comments :-(
syntax match    tdf_commentSkip    contained "^\s*\*\($\|\s\+\)"
syntax region tdf_commentString    contained start=+"L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=tdf_commentSkip
syntax region tdf_comment2String   contained start=+"L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end="$"
syntax region  tdf_commentL        start="//" skip="\\$" end="$" keepend contains=@tdf_commentGroup,tdf_comment2String
syntax region tdf_comment  matchgroup=tdf_commentStart start="/\*" end="\*/" contains=@tdf_commentGroup,tdf_commentStartError,tdf_commentString

syntax match  tdf_commentError   display "\*/"
syntax match  tdf_commentStartError display "/\*"me=e-1 contained


" Accept %: for # (C99)
syn region      tdfPreCondit      start="^\s*\(%:\|#\)\s*\(if\|ifdef\|ifndef\|elif\)\>" skip="\\$" end="$" end="//"me=s-1 contains=tdfComment,tdfCppString,tdfCharacter,tdfCppParen,tdfParenError,tdfNumbers,tdfCommentError,tdfSpaceError
syn match       tdfPreCondit      display "^\s*\(%:\|#\)\s*\(else\|endif\)\>"
if !exists("c_no_if0")
syn region      tdfCppOut         start="^\s*\(%:\|#\)\s*if\s\+0\+\>" end=".\@=\|$" contains=tdfCppOut2
syn region      tdfCppOut2        contained start="0" end="^\s*\(%:\|#\)\s*\(endif\>\|else\>\|elif\>\)" contains=tdfSpaceError,tdfCppSkip
syn region      tdfCppSkip        contained start="^\s*\(%:\|#\)\s*\(if\>\|ifdef\>\|ifndef\>\)" skip="\\$" end="^\s*\(%:\|#\)\s*endif\>" contains=tdfSpaceError,tdfCppSkip
endif

syn region      tdfIncluded       display contained start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match       tdfIncluded       display contained "<[^>]*>"
syn match       tdfInclude        display "^\s*\(%:\|#\)\s*include\>\s*["<]" contains=tdfIncluded

syn cluster     tdfPreProcGroup   contains=tdfPreCondit,tdfIncluded,tdfInclude,tdfDefine,tdfCppOut,tdfCppOut2,tdf_commentSkip,tdf_commentString,tdf_comment2String,@tdf_commentGroup,tdf_commentStartError
syn region      tdfDefine         start="^\s*\(%:\|#\)\s*\(define\|undef\)\>" skip="\\$" end="$" end="//"me=s-1 contains=ALLBUT,@tdfPreProcGroup,@Spell
syn region      tdfPreProc        start="^\s*\(%:\|#\)\s*\(pragma\>\|line\>\|warning\>\|warn\>\|error\>\)" skip="\\$" end="$" keepend contains=ALLBUT,@tdfPreProcGroup,@Spell


"syn match cLineSkip    "\\$"

" numeric literals (XXX stolen from verilog.vim)
syntax match   tdf_number "\(\<\d\+\|\)'[bB]\s*[0-1_xXzZ?]\+\>"
syntax match   tdf_number "\(\<\d\+\|\)'[oO]\s*[0-7_xXzZ?]\+\>"
syntax match   tdf_number "\(\<\d\+\|\)'[dD]\s*[0-9_xXzZ?]\+\>"
syntax match   tdf_number "\(\<\d\+\|\)'[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syntax match   tdf_number "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"
 

" strings
syntax region tdf_string start=/"/ skip=/\\"/ end=/"/

" SV keywords
syntax keyword tdf_statement state
syntax keyword tdf_statement goto
syntax keyword tdf_statement stay
syntax keyword tdf_statement break
syntax keyword tdf_statement input
syntax keyword tdf_statement output
syntax keyword tdf_statement param
syntax keyword tdf_conditional if
syntax keyword tdf_conditional then
syntax keyword tdf_conditional else
syntax keyword tdf_statement default
syntax keyword tdf_structure enum

syntax keyword tdf_type      boolean
syntax keyword tdf_type      int
syntax keyword tdf_type      integer
syntax keyword tdf_type      unsigned
syntax keyword tdf_type      signed
syntax match   tdf_type      "signed\(\[.*\]\)\?"
syntax match   tdf_type      "unsigned\(\[.*\]\)\?"
syntax keyword tdf_type      float
syntax keyword tdf_type      double
syntax keyword tdf_type      void

" frequently used expressions
syntax keyword tdf_bool True
syntax keyword tdf_bool False

" system tasks
syntax match tdf_system_task "\printf"


" link classes to vim colors
highlight link tdf_statement Keyword
highlight link tdf_typedef Typedef
highlight link tdf_type Type
highlight link tdf_interface Type
highlight link tdf_typeclass Type
highlight link tdf_structure Structure
highlight link tdf_conditional Conditional
highlight link tdf_loop Repeat
highlight link tdf_comment_basic Comment
highlight link tdf_commentL Comment
highlight link tdf_comment Comment
highlight link tdf_commentStart Comment
" highlight link tdf_op Operator
highlight link tdf_string String
highlight link tdf_bool Boolean
highlight link tdf_number Number
" highlighting identifiers gets a bit garish
" highlight link tdf_identifier Identifier
highlight link tdf_function Function
highlight link tdf_system_task Function
highlight link tdf_todo Todo
highlight link tdf_attributes SpecialComment 
highlight link tdf_attribute Keyword

highlight link tdfIncluded        Include
highlight link tdfInclude         Include
highlight link tdfPreProc         PreProc
highlight link tdfDefine          Macro
highlight link tdfPreCondit       PreCondit
highlight link tdfCppSkip         tdfCppOut
highlight link tdfCppOut2         tdfCppOut
highlight link tdfCppOut          Comment



let b:current_syntax="tdf"

