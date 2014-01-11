syntax on

unlet b:current_syntax
syntax include @SCRIPT syntax/sh.vim
syntax region scriptSnip matchgroup=Snip start=+<<SCRIPT\s*$+ end=+^\s*SCRIPT$+ contains=@SCRIPT

hi link Snip SpecialComment
