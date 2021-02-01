" PLUGINS
call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-vinegar'
    Plug 'scrooloose/nerdtree'
    Plug 'mxw/vim-jsx'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for' : ['javascript'] }
    Plug 'dpelle/vim-LanguageTool'
    Plug 'udalov/kotlin-vim'
    Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
call plug#end()

colorscheme gruvbox
set background=dark

" ENABLE SYNTAX 
syntax enable

" ENABLE NUMBER OF THE LINE
set number

" ENABLE MOUSE
set mouse=a

" SET TAB SIZE OF 2 SPACES
set tabstop=2
set shiftwidth=2
set expandtab

" SET ENCODING DO UTF-8
set encoding=utf8

" ENABLES NERDTREE
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" CHANGE LEADER TO SPACE
nnoremap <SPACE> <Nop>

set backspace=indent,eol,start

" MOVE LINES UP AND DOWN
nmap n :m +1<CR>
nmap m :m -2<CR>
vmap n :m +1<CR>
vmap m :m -2<CR>

nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

" AUTOCOMPLETION
filetype plugin on
set omnifunc=syntaccomplete#Complete
