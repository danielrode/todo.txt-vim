if exists("b:current_syntax")
  finish
endif

syntax match todotxtProject /\s+\S\+/
syntax match todotxtContext /\s@\S\+/
syntax match todotxtDate /\d\{4}-\d\{1,2}-\d\{1,2}/
syntax region todotxtPri1 start="^(A)" end=" "
syntax region todotxtPri2 start="^(B)" end=" "
syntax region todotxtPri3 start="^(C)" end=" "
syntax region todotxtPri4 start="^([D-Z])" end=" "
syntax region todotxtDone start="^x " end="$"

highlight  default  link  todotxtDone    Comment
highlight  default  link  todotxtPri1    Constant
highlight  default  link  todotxtPri2    Statement
highlight  default  link  todotxtPri3    Identifier
" highlight  default  link  todotxtDate    PreProc
highlight  default  link  todotxtDate    Comment
highlight  default  link  todotxtProject Special
highlight  default  link  todotxtContext Special

let b:current_syntax = "todotxt"
