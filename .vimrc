filetype off

set ai
set backspace=indent,eol,start
set clipboard=unnamed
set exrc
set expandtab
set mouse=a
set nocompatible
set noswapfile
set rtp+=~/.vim/bundle/Vundle.vim
set shiftwidth=4
set smarttab
set tabstop=4
set wildignore+=*/tmp/*
set wildignore+=*/bower_components/*
set wildignore+=*/node_modules/*
set wildignore+=*/Pear/*
set wildignore+=.git

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/vimtmp
set directory=~/.vim/vimtmp

call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'int3/vim-extradite'
Bundle 'itchyny/lightline.vim'
Bundle 'kablamo/vim-git-log'
Bundle 'kien/ctrlp.vim'
Bundle 'mbbill/undotree'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'dkprice/vim-easygrep'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'terryma/vim-multiple-cursors'

call vundle#end()

filetype plugin indent on

set number
set background=dark
syntax enable

let g:solarized_termcolors = 256
colorscheme solarized

let mapleader = ','

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = ''
let g:ctrlp_max_files = ''
let g:ctrlp_max_depth=40
let g:ctrlp_working_path_mode = ''

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:JSHintHighlightErrorLine = 0
let g:syntastic_javascript_checkers = ['jshint', 'eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

highlight diffadd cterm=none ctermfg=bg ctermbg=Green gui=none guifg=bg guibg=Green
highlight diffdelete cterm=none ctermfg=bg ctermbg=Red gui=none guifg=bg guibg=Red
highlight diffchange cterm=none ctermfg=bg ctermbg=Yellow gui=none guifg=bg guibg=Yellow
highlight difftext cterm=none ctermfg=bg ctermbg=Magenta gui=none guifg=bg guibg=Magenta

nmap <silent><C-j> :set paste<CR>m`o<ESC>``:set nopaste<CR>
nmap <silent><C-k> :set paste<Cr>m`O<ESC>``:set nopaste<CR>
nmap <leader>pp o<ESC>p
nmap <leader>s <silent>i <ESC>
nmap <leader>d "_dd<ESC>
nmap <leader>sc :setlocal spell! spelllang=en_us<CR>
nmap <leader>nt :NERDTreeToggle<Cr>
nmap <leader>n :NERDTree<Cr>
nmap <leader>h :UndotreeToggle<Cr>

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
au BufWritePre * :%s/\s\+$//e

source ~/.vim/qargs.vim
