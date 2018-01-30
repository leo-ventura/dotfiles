set mouse=a
set whichwrap=b,s,<,>,[,]
filetype plugin on
syntax on
set number
set spell
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
set guiheadroom=0
set tabstop=4

colorscheme base16-atelierdune
set background=dark
set termguicolors
