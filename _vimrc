set mouse=a
let mapleader = ","


" filetypes
filetype on
filetype plugin on
filetype indent on
syntax on
set encoding=utf-8
set guioptions-=r
set guioptions-=T
set nocompatible
set nobackup                      
set nowritebackup           
set noswapfile



"Tabs to Spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


" :bnext --> buffer next 
" :bprev --> buffer previous


" Indent stuff
set smartindent
set autoindent


" Better line wrapping
set number
set wrap
set colorcolumn=79

" Searching 
set ignorecase
set incsearch
set hlsearch


let g:gruvbox_termcolors='256'
let g:gruvbox_contrast_dark='hard' 
colorscheme gruvbox
set bg=dark

filetype plugin on
set omnifunc=syntaxcomplete#Complete
:set omnifunc=pythoncomplete

set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'preservim/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dense-analysis/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>



"Indent Line
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['┆']



" Airline Vim
let g:airline#extensions#tabline#enabled = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)



" ALE 
let g:ale_linters = {
\   'python': ['flake8', 'pyls', 'bandit', 'mypy'],
\}

let g:ale_python_pyls_executable = "pylsp"

let g:ale_python_pyls_config = {
\   'pylsp': {
\     'plugins': {
\       'pycodestyle': {
\         'enabled': v:false,
\       },
\       'pyflakes': {
\         'enabled': v:false,
\       },
\       'pydocstyle': {
\         'enabled': v:false,
\       },
\     },
\   },
\}



let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc


