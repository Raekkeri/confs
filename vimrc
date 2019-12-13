set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'file:///Users/teemuhusso/.vim/vim-python-pep8-indent'
Plugin 'file:///Users/teemuhusso/.vim/ctrlp.vim'

call vundle#end()            " required

set noautoindent
set cindent
set expandtab
set smartindent
set autowrite

syntax enable

" Leader stuff
let mapleader = ","

set path+=**
set wildmenu
command! MakeTags !ctags -R --exclude=.git --exclude=node_modules .

" Git stuff
command! -nargs=+ Git !git -C `git -C %:p:h rev-parse --show-toplevel` <args>
command! -nargs=* Commit Git commit <args>
noremap <Leader>d :Git diff %:p<CR>
noremap <Leader>D :Git diff<CR>
noremap <Leader>c :Git diff --cached %:p<CR>
noremap <Leader>C :Git diff --cached<CR>
noremap <Leader>add :Git add %:p<CR>

let g:netrw_banner=0
let g:netrw_altv=1

" Tab switching
nnoremap <A-D-Left> :tabp<CR>
nnoremap <A-D-Right> :tabn<CR>
set showcmd     " display incomplete commands

" Search highlight
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set pastetoggle=<F2>

highlight Search     ctermfg=Black  ctermbg=gray cterm=NONE

" case insensitive search
set ic

" Change current directory to that of current file
nnoremap ,lcd :lcd %:p:h<CR>:pwd<CR>
command Tabe tabe %:p:h
command Spacestotabs s/    /    /g

nmap <silent> <leader>t :tabe %:p:h<CR>

set backspace=2

nmap <silent> <leader>y' T'yt'
nmap <silent> <leader>y" T"yt"

" ,s for quick save
noremap <Leader>s :update<CR>

set ls=2

set wildignore=*.pyc,*cpython-*,*/node_modules/*,/usr/*

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Persistent undo (remember to mkdir ~/.vim/undo)
set undofile
set undodir=$HOME/.vim/undo

set undolevels=100
set undoreload=100

autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4

autocmd FileType javascript set tabstop=2
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set shiftwidth=2

filetype indent on

autocmd FileType python setlocal indentkeys-=<:>
autocmd FileType python setlocal indentkeys-=:

" Added on 2019-10-23

set nu
hi LineNr ctermfg=grey

" Buffer navigation
nnoremap <leader>b :ls<cr>:b<space>

set exrc
set secure
