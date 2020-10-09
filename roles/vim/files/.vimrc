" Options "
set nu
set tabstop=4
set shiftwidth=2
set expandtab
set splitbelow
set showmatch
set hlsearch
set incsearch
set ignorecase
set encoding=utf-8
set nocompatible
set guifont=Inconsolata\ Nerd\ Font\ Complete\ Mono:h16
set nosmd
set listchars=eol:$,nbsp:_,tab:->,trail:~
set list
filetype plugin indent on
syntax enable

" Global variables "
let &t_SI.="\e[5 q" 
let &t_SR.="\e[3 q" 
let &t_EI.="\e[1 q"

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin list "
call plug#begin('~/.vim/bundle')
Plug 'vim-airline/vim-airline'
Plug 'jpalardy/vim-slime'
call plug#end()

" Plugin specific variables "

" Airline "
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:airline#extensions#xkblayout#enabled = 0

" Powerline "
let g:Powerline_symbols='unicode'

" Slime "
let g:slime_target = "vimterminal"

