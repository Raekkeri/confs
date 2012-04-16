set nocompatible
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Tab switching
nnoremap <A-D-Left> :tabp<CR>
nnoremap <A-D-Right> :tabn<CR>
set showcmd		" display incomplete commands

" Search highlight
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


set ruler

set pastetoggle=<F2>

highlight Search     ctermfg=Black  ctermbg=gray cterm=NONE

" Change current directory to that of current file
nnoremap ,lcd :lcd %:p:h<CR>:pwd<CR>
command Tabe tabe %:p:h

" case insensitive search
set ic

" leader stuff
let mapleader = ","
nmap <silent> <leader>t :tabe %:p:h<CR>

set backspace=2

"nmap <silent> <leader>" T"yt":tabe src/**/ 
"0<CR>

nmap <silent> <leader>" T"yt":tabe src/**/0
nmap <silent> <leader>' T'yt':tabe src/**/0

nmap <silent> <leader>y' T'yt'
nmap <silent> <leader>y" T"yt"
