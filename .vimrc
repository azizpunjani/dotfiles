filetype plugin indent on
syntax on

set ai
set backspace=indent,eol,start
set expandtab
set mouse=a
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
set rtp^=~/.vim/bundle/ctrlp.vim
set rtp^=~/.vim/bundle/ag
set shiftwidth=4
set smarttab
set tabstop=4
set t_Co=256

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/vimtmp,.
set directory=~/.vim/vimtmp,.

call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'

let mapleader = ','

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = ''
let g:ctrlp_max_files = ''
let g:ctrlp_max_depth=40
let g:ctrlp_working_path_mode = ''

let g:JSHintHighlightErrorLine = 0

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

nmap <silent><C-j> :set paste<CR>m`o<ESC>``:set nopaste<CR>
nmap <silent><C-k> :set paste<Cr>m`O<ESC>``:set nopaste<CR>
nmap <leader>pp o<ESC>p
nmap <leader>s i <ESC>
nmap <leader>sc :setlocal spell! spelllang=en_us<CR>
nmap <leader>nt :NERDTreeToggle<Cr>
nmap <leader>n :NERDTree<Cr>

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
au BufWritePre * :%s/\s\+$//e
