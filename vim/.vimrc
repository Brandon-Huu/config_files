set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

set number
set cursorline

set expandtab
set shiftwidth=2

set ignorecase
set smartcase
set showcmd
set showmatch
set hlsearch

set wildmenu
set wildmode=list:longest

set history=1000

syntax on
Plugin 'wakatime/vim-wakatime'

# On save, auto comiple and open the compiled pdf file
autocmd BufWritePost *.typ silent! !typst compile <afile> <afile>.pdf && evince <afile>.pdf &
