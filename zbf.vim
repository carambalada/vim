" Vim syntax file
" Language:     Cisco ZBF
" Maintainer: Timur Mussalimov

if exists("b:current_syntax")
 finish
endif

setlocal iskeyword+=-
"syntax case ignore

syntax match zbfComment	/!.*/ contains=zbfBR
highlight link zbfComment		SpecialComment

syntax match zbfDescription "^\s*\(description\|remark\) .*$"
highlight link zbfDescription	Comment


syntax match zbfCLASS_MAP "^class\-map .\+"
syntax match zbfCLASS_MAP "^ match .\+"
highlight link zbfCLASS_MAP Statement

syntax match zbfNO "^\s*no .\+"
highlight link zbfNO CursorColumn

syntax match zbfOG "^object\-group .\+"
syntax match zbfOG "^ host .\+"
syntax match zbfOG "^ range .\+"
syntax match zbfOG "^ tcp .\+"
syntax match zbfOG "^ [0-9 .]\+$"
syntax match zbfOG "^ group\-object .\+"
highlight link zbfOG Operator

syntax match zbfACL "^ip access\-list .\+"
syntax match zbfACL "^ permit .\+"
highlight link zbfACL Type

syntax match zbfPM "^policy\-map .\+"
syntax match zbfPM "^ class .\+"
syntax match zbfPM "\(inspect\|drop\|pass\)$"
highlight link zbfPM Identifier

syntax match zbfZP "^zone\-pair .\+"
syntax match zbfZP "^ service\-policy .\+"
highlight link zbfZP SpecialKey

syntax match zbfZ "^zone .\+"
highlight link zbfZ Conditional

syntax match zbfPORT "^ip port\-map .\+"
highlight link zbfPORT Identifier

syntax match zbfBR "\(kl\|pvl\|ost\|spb\|kr\|zsk\|r\d\{2\}\)r\d\{1,2\}\(\.\|r\)\?"
highlight link zbfBR Constant


let b:current_syntax = "zbf"
