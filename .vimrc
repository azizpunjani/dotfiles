set ai
set backspace=indent,eol,start
set backupcopy=yes
set backupdir=~/.vim/vimtmp,.
set clipboard+=unnamed
set directory=~/.vim/vimtmp,.
set expandtab
set ignorecase
set mouse=a
set nocompatible
set nu
set rtp+=~/.vim/bundle/Vundle.vim
set shiftwidth=4
set smarttab
set synmaxcol=200
set tabstop=4
set t_Co=256
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
set foldmethod=syntax
set foldlevel=3

call vundle#begin()

Plugin 'honza/vim-snippets'
Plugin 'int3/vim-extradite'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/emmet-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scwood/vim-hybrid'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'

call vundle#end()

syntax on
set background=dark
colorscheme hybrid

let mapleader = ','

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = ''
let g:ctrlp_max_files = ''
let g:ctrlp_max_depth=40
let g:ctrlp_working_path_mode = ''
let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'scss'] }

let g:JSHintHighlightErrorLine = 0

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<shift-tab>"

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*

nmap <silent><C-j> :set paste<CR>m`o<ESC>``:set nopaste<CR>
nmap <silent><C-k> :set paste<Cr>m`O<ESC>``:set nopaste<CR>
nmap <leader>pp o<ESC>p
nmap <leader>s i <ESC>
nmap <leader>sc :setlocal spell! spelllang=en_us<CR>
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>n :NERDTree<CR>
nmap <leader>g :G <cword><CR>
nmap <leader>ff :FF <cword> %<CR>

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
au BufRead,BufNewFile /home/apunjani/portal4/current/content/public/js/Portal4/*.js set tabstop=4 shiftwidth=4
au BufWritePre * :%s/\s\+$//e
au FileType javascript setlocal shiftwidth=2 tabstop=2
au FileType scss setlocal shiftwidth=2 tabstop=2
au! FileType qf nnoremap <buffer> <leader><Enter> <C-w><Enter><C-w>L

command -nargs=+ G execute 'silent Ggrep!' <q-args> | cw | copen | redraw!
command -nargs=+ FF execute 'silent Ggrep' <q-args> | cw | copen | redraw!

function! PropagatePasteBufferToOSX()
  let @n=getreg('"')
  call system('pbcopy-remote', @n)
  echo "done"
endfunction

function! PopulatePasteBufferFromOSX()
  let @" = system('pbpaste-remote')
  echo "done"
endfunction

nnoremap <leader>1 :call PopulatePasteBufferFromOSX()<cr>
nnoremap <leader>2 :call PropagatePasteBufferToOSX()<cr>
