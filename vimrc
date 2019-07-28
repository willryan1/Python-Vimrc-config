set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

" enable syntax highlighting
syntax enable

" show line numbers
set number

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

Plugin 'vim-scripts/indentpython.vim'

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

set clipboard=unnamed

Plugin 'dracula/vim'

set scrolloff=5    " let 5 lines before/after cursor during scroll

"color dracula

" set tabs to have 4 spaces
"set ts=4

" indent when moving to the next line while writing code
"set autoindent

" expand tabs into spaces
"set expandtab

" when using the >> or << commands, shift lines by 4 spaces
"set shiftwidth=4

" show a visual line under the cursor's current line
"set cursorline

" show the matching part of the pair for [] {} and ()
"set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

