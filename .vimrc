set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
Plugin 'a.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set autochdir
colorscheme solarized
set backspace=indent,eol,start
set background=dark
set hidden
set nu
set cursorline
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
set tags=./tags,tags;
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set nocompatible
set noswapfile
nmap <F8> :TagbarToggle<CR>


"highlight all matches
set hlsearch
" Make 81st column standout
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100) 
"make trailing spaces and tabs stand out 
autocmd BufNewFile,BufReadPost *.hn set filetype=cpp
"map semicolon to colon
nnoremap ; :
nnoremap : ;

if exists('g:space_tabs')
    set listchars=nbsp:_,trail:.,tab:>~
    set list
endif


filetype on
filetype plugin on
filetype indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>

noremap <leader>. :CtrlPTag<cr>

set shell=/bin/zsh
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

let g:python_host_prog = '/usr/bin/python'
