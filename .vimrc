
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"git interface
Plugin 'tpope/vim-fugitive'
"
"filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' 

"python syntax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'

" add line numbers
set number

"auto-completion stuff
"Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'klen/rope-vim'
Plugin 'python-mode/python-mode'
"Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

"code folding
Plugin 'tmhedberg/SimpylFold'

"Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

"Syntax highlighting
Plugin 'tpope/vim-markdown' 
Plugin 'sheerun/vim-polyglot'
call vundle#end()

filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za  " Enable folding with the spacebar
"set foldmethod=marker
"set foldmarker={{,}}
let g:markdown_folding = 1


" PEP8 Indentation
au BufNewFile, BufRead *.py
   \ set tabstop=4
   \ set softtabstop=4
   \ set shiftwidth=4
   \ set textwidth=79
   \ set expandtab
   \ set autoindent
   \ set fileformat=unix

" Flag unnecessary Whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Set utf-8 encomding
set encoding=utf-8

" Python autocompletion
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntax highlighting
let python_highlight_all=1
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
syntax on

" Colourscheme
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F6>") " F6 to switch between dark and light theme
