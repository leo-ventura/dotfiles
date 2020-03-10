call plug#begin('~/.vim/plugged')
	Plug 'valloric/youcompleteme'
call plug#end()


" allowing mouse
set mouse=a
" set whichwrap=b,s,<,>,[,]
" setting on syntax and plugin
filetype plugin on
syntax on
" setting numbering
set number

" mappings
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" setting gui head
set guiheadroom=0

" setting tab to occupy 4 spaces
set tabstop=4

" setting proper split
set splitbelow splitright
" set termguicolors
" set onedark_termcolors=256
" set onedark_terminal_italics=1
" setting color theme
colorscheme onedark
" set background=dark


" ===== Personal Plugin Configurations and Remappings
map <C-b> :NERDTreeToggle<CR> 

map <F12> :YcmCompleter GoTo<CR>
