" Place all swap files in one location; trailing // ensures uniqueness
set directory^=~/.vim/tmp/swap//

" Disable vi compatibility when overriding default vimrc via -u
set nocompatible

" Hide abandoned buffers instead of unloading them
set hidden

" Automatically read files changed outside of vim
set autoread

" Enable mouse in all modes
set mouse=a

" Save more command-line history
set history=1000

""" Shorten all file messages; do not display the intro message
set shortmess+=aI

" Always report the number of lines changed by a command
set report=0

" Show partial commands
set showcmd

" Split below/right instead of above/left
set splitbelow splitright

" Always show the status line
set laststatus=2

" File name, flags (modified, read-only, help, preview), and file type
set statusline=%t%m%r%h%w\ %y%{&ft!=''?'\ ':''}

" File format and encoding; noeol; truncate right; switch to right alignment
set statusline+=[%{&ff},%{&fenc!=''?&fenc:&enc}]%{&eol?'':'\ [noeol]'}\ %<%=

" Character under cursor in decimal and hexadecimal
set statusline+=[%03b,0x%02B]

" Line, total lines, column, virtual column, and display width
set statusline+=\ [%l/%L,%c%V/%{strdisplaywidth(getline('.'))}]

" Percent of file (line / total lines) and percent of file (displayed window)
set statusline+=\ [%p%%,%P]

" Show line numbers
set number

" Display parts of wrapped lines that are cut off at the bottom
set display=lastline

" Do not split words when wrapping long lines
set linebreak

" Default to 2 spaces per tab
set shiftwidth=2 expandtab smarttab

" Round to the nearest tab when indenting; copy indentation exactly
set shiftround autoindent copyindent

" Toggle paste mode
set pastetoggle=<F2>

if has('clipboard')
  " Interact with the X clipboard
  set clipboard=unnamed
endif

" Default to # comments, not C-style
set commentstring=#\ %s

" Always allow backspacing
set backspace=indent,eol,start

" Do not automatically add EOL at EOF
set nofixeol

" Insert 1 space (not 2) between sentences when joining
set nojoinspaces

" set indent guide to enabled by default
let g:indent_guides_enable_on_vim_startup = 1

" Set the time format
let g:airline#extensions#clock#format = '%H:%M:%S'

" update vim clock
let g:airline#extensions#clock#updatetime = 1000

" nerdtree stuff
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

if filereadable(expand('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'mhinz/vim-signify' 
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-commentary'
  Plug 'dracula/vim'
  Plug 'preservim/nerdtree'
  call plug#end()
endif
