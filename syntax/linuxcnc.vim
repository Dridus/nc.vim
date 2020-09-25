" Vim syntax file
" Language: LinuxCNC NC 

" Quit when a (custom syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syn case ignore

syn region linuxcncComment start="(" end=")"
syn region linuxcncPragma start="(\(msg\|debug\|print\|probeopen\|logopen\|logappend\|log\)," end=")"
syn match linuxcncPragma "(\(probeclose\|logclose\|logappend\|log\))"

syn match linuxcncConstantNumber "\<[-+]\?\(\d*[.]\d\+\|\d\+\)\>"

syn cluster linuxcncExpression contains=linuxcncConstantNumber,linuxcncRegister,linuxcncScalarOperator,linuxcncLogicalOperator,linuxcncKeyword

syn match linuxcncAssignmentOperator "="
syn match linuxcncScalarOperator "[*][*]\|[-+*/]" contained
syn match linuxcncLogicalOperator "\<\(MOD\|EQ\|NE\|GT\|GE\|LT\|LE\|AND\|XOR\|OR\)\>" contained
syn region linuxcncRegister start="#<"he=e-1 end=">"
syn match linuxcncRegister "#\d\+"

syn keyword linuxcncKeyword ATAN ABS ACOS ASIN COS EXP FIX FUP ROUND LN SIN SQRT TAN EXISTS

syn match linuxcncCommands "\<\([ABCDFGHIJKLMNOPRSTXYZ]\s*\([-+]\?\(\d*[.]\d\+\|\d\+[.]\d*\|\d\+\)\)\)\{1,}\>" contains=@linuxcncWord
syn match linuxcncCommand "[A-Z]\s*\[\@=" contains=@linuxcncWord
syn match linuxcncCommand "\<O<\@=" contains=linuxcncWordFlow

syn cluster linuxcncWord contains=linuxcncWordG,linuxcncWordM,linuxcncWordAxis,linuxcncWordSpeed,linuxcncWordTool,linuxcncWordOther,linuxcncWordFlow

syn match linuxcncWordG "G\d\+\([.]\d\+\)\?" contained
syn match linuxcncWordM "M\d\+" contained
syn match linuxcncWordAxis "[ABCIJKXYZR]\([-+]\?\(\d*[.]\d\+\|\d\+[.]\d*\|\d\+\)\)" contained
syn region linuxcncWordAxis start="[ABCIJKXYZR]\s*\[" end="\]" contained contains=@linuxcncExpression
syn match linuxcncWordSpeed "[FS]\([-+]\?\(\d*[.]\d\+\|\d\+[.]\d*\|\d\+\)\)" contained
syn region linuxcncWordSpeed start="[FS]\s*\[" end="\]" contained contains=@linuxcncExpression
syn match linuxcncWordTool "[DHT]\d\+" contained
syn region linuxcncWordTool start="[DHT]\s*\[" end="\]" contained contains=@linuxcncExpression
syn match linuxcncWordOther "[LP]\d\+" contained
syn region linuxcncWordOther start="[LP]\s*\[" end="\]" contained contains=@linuxcncExpression
syn match linuxcncWordBlock "[N]\d\+" contained
syn region linuxcncWordFlow start="O<" end=">" contained
syn region linuxcncWordFlow start="O\[" end="\]" contained contains=@linuxcncExpression
syn match linuxcncWordFlow "O\d\+" contained


hi def link linuxcncKeyword Statement
hi def link linuxcncPragma Macro
hi def link linuxcncComment Comment
hi def link linuxcncWordG Macro
hi def link linuxcncWordM Macro
" hi def link linuxcncWordAxis Constant
" hi def link linuxcncWordSpeed Special
hi def link linuxcncWordTool Special
hi def link linuxcncWordOther Special
hi def link linuxcncWordBlock Typedef
hi def link linuxcncWordFlow String
hi def link linuxcncConstantNumber Number
hi def link linuxcncRegister Identifier
hi def link linuxcncFunction Function
hi def link linuxcncLabel Typedef
hi def link linuxcncSystemVariable Identifier
hi def link linuxcncAssignmentOperator Operator
hi def link linuxcncScalarOperator Operator
hi def link linuxcncLogicalOperator Operator

syn keyword linuxcncKeyword if else elseif endif
syn keyword linuxcncKeyword sub endsub return call
syn keyword linuxcncKeyword do while
syn keyword linuxcncKeyword repeat endrepeat

let b:current_syntax = "linuxcnc"
