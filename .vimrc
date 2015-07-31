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

Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'int3/vim-extradite'
Plugin 'itchyny/lightline.vim'
Plugin 'kablamo/vim-git-log'
Plugin 'kien/ctrlp.vim'
Plugin 'mbbill/undotree'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'dkprice/vim-easygrep'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'

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

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

let g:JSHintHighlightErrorLine = 0

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
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
nmap <leader>h :UndotreeToggle<Cr>

nmap <leader>nt :NERDTreeToggle<Cr>
nmap <leader>n :NERDTree<Cr>

nmap <leader>s <Plug>(easymotion-s)
nmap <leader>s <Plug>(easymotion-s2)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
au BufWritePre * :%s/\s\+$//e

source ~/.vim/qargs.vim
