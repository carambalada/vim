set number
"set ts=4
colorscheme elflord
set history=100
set ruler
set hlsearch
if &term =~ "xterm"
 syntax on
endif


au BufRead *.zbf set filetype=zbf
