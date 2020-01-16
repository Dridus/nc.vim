" Vim syntax file
" Language: NC 

" Quit when a (custom syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syn case ignore

syn  match ncComment /;.*/
syn match ncGCodes /\<G\d\+\>/
syn match ncGCodes /\<G=\@=/
syn match ncMCodes /\<M\d\+\>/
syn match ncMCodes /\<M=\@=/


syntax match ncConstant /\<\d\+\>/
syntax match ncConstant /\<\d\+\.\d\+\>/
syntax match ncConstant /\<\.\d\+\>/
syntax match ncConstant /\<\d\+\.\>/
syntax match ncConstant /"[^"]*"/
syntax match ncAxis "\<[XYZABCIJKS]-\?\d\+\>"
syntax match ncAxis "\<[XYZABCIJKS]-\?\.\d\+\>"
syntax match ncAxis "\<[XYZABCIJKS]-\?\d\+\."
syntax match ncAxis "\<[XYZABCIJKS]-\?\d\+\.\d\+\>"
syntax match ncAxisAssign "\<[XYZABCIJKS]=\@="

syntax match ncRegister "\<R\d\+\>"
syntax match ncRegister "\<R\[\@="

syntax match ncFeed "\<F-\?\d\+\>"
syntax match ncFeed "\<F-\?\.\d\+\>"
syntax match ncFeed "\<F-\?\d\+\."
syntax match ncFeed "\<F-\?\d\+\.\d\+\>"
syntax match ncFeedAssign "\<F=\@="

syntax match ncTool "\<T\d\+\>"
syntax match ncToolAssign "\<T=\@="
syntax match ncTool "\<D\d\+\>"
syntax match ncToolAssign "\<D=\@="
syntax match ncTool "\<H\d\+\>"
syntax match ncToolAssign "\<H=\@="

syn match ncLabel /^[A-Za-z0-9_]\+:/
syn match ncLabel /\<N\d\+\>/
syn match ncSub /\<L\d\+\>/
syn keyword ncKeyword proc save displof
syn keyword ncKeyword if else endif
syn keyword ncKeyword goto gotof gotob
syn keyword ncKeyword stopre stopfifo startfifo
syn keyword ncKeyword def supa meas meaw ret int real string diamof
syn keyword ncKeyword and or not
syn keyword ncKeyword trans rot scale mirror atrans arot ascale amirror
syn keyword ncKeyword cfc cftcp
syn keyword ncKeyword brisk soft
syn keyword ncKeyword ffwof ffwon
syn keyword ncKeyword extcall call mcall
syn keyword ncKeyword compon compoff compcurv compcad
syn keyword ncFunction abs trunc msg sin cos tan asin acos atan2 sqrt pot ln exp
syn keyword ncFunction ac ic acn
syn match ncFunction /\<cycle(\@=/
syn match ncOperator /==\?/
syn match ncOperator /<>/
syn match ncOperator /<=\?/
syn match ncOperator />=\?/
syn match ncOperator /+/
syn match ncOperator /-/
syn match ncOperator /[*]/
syn match ncOperator /\//
syn match ncOperator /<</
syn match ncSysVar /$[A-Za-z_0-9]\+/
syn keyword ncSysVar acc spos

hi def link ncComment Comment
hi def link ncGCodes Function
hi def link ncMCodes Macro
hi def link ncConstant Constant
hi def link ncAxis Constant
hi def link ncAxisAssign Identifier
hi def link ncFeed Constant
hi def link ncFeedAssign Identifier
hi def link ncTool Constant
hi def link ncToolAssign Identifier
hi def link ncRegister Identifier
hi def link ncFunction Function
hi def link ncLabel Typedef

hi def link ncKeyword Keyword
hi def link ncOperator Operator
hi def link ncSysVar Special

let b:current_syntax = "nc"
