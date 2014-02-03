execute pathogen#infect()
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
set listchars=tab:>~,nbsp:_,trail:.
set list 
autocmd BufNewFile,BufReadPost *.hn set filetype=cpp
"map semicolon to colon
nnoremap ; :
nnoremap : ;


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

