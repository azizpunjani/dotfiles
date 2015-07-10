filetype plugin indent on
syntax on

set ai
set backspace=indent,eol,start
set expandtab
set mouse=a
set nocompatible
set rtp^=/usr/share/vim/vim72
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim
set shiftwidth=4
set smarttab
set tabstop=4
set t_Co=256

call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

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

nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
nmap <leader> :TagbarToggle<CR>
nmap <F4> o<ESC>p
map <leader>s i <Esc>
map <leader>sc :setlocal spell! spelllang=en_us<CR>
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>n :NERDTree<CR>
autocmd BufWritePre * :%s/\s\+$//e

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/vimtmp,.
set directory=~/.vim/vimtmp,.
