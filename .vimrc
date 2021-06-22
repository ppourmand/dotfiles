" Disable vi compatibility when overriding default vimrc via -u
set nocompatible

" Do not use backup files in /private/tmp (fixes crontab editing in OS X)
set backupskip+=/private/tmp/*

" Place all swap files in one location; trailing // ensures uniqueness
set directory^=~/.vim/tmp/swap//

" Hide abandoned buffers instead of unloading them
set hidden

" Automatically read files changed outside of vim
set autoread

" Enable mouse in all modes
set mouse=a

" Shorten all file messages; do not display the intro message
set shortmess+=aI

" Save more command-line history
set history=1000

" Search upward for a tags file
set tags+=tags;

" Ignore temporary and output files
set wildignore+=*.class,*.o,*.out,*.pyc,*.swp,*~

" Complete to the longest common prefix first, then list all completions
set wildmode=longest,list

" Always report the number of lines changed by a command
set report=0

" Show partial commands
set showcmd

" Split below/right instead of above/left
set splitbelow splitright

" Always show the status line
set laststatus=2

" Show line numbers
set number

" navigate and close windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-c> <C-w>c

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

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:airline_powerline_fonts = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#branch#empty_message = 'no branch'
let g:airline_section_x = '' " in s
let g:airline_section_y = '' " in s
let g:airline_section_z = '' " in s
let g:airline_skip_empty_sections = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

if filereadable(expand('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'jiangmiao/auto-pairs'
  Plug 'mhinz/vim-signify'
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-commentary'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'dracula/vim'
  Plug 'vim-airline/vim-airline'
  Plug 'sheerun/vim-polyglot'
  call plug#end()
endif

colorscheme dracula
