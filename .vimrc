" Use Vim settings, rather than Vi settings
set nocompatible

" Allow changing buffers w/o saving
set hidden

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" keep 1000 lines of command line history
set history=1000

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd	

" show line numbers
set number

" use jj as escape
inoremap jj <C-c>
cnoremap jj <C-c>

" Leave space below cursor when strolling
set scrolloff=3

" Syntax highlighting
syntax on

" Use semi-colon to clear highlighted search results
nmap <silent> <Leader>; :noh<CR>

" Highligh search terms
set hlsearch
set incsearch

" Automatically jump to last known cursor position
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif
endif

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Ignore case when searching
set ignorecase
set smartcase

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set visualbell
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set the background color to dark
set background=dark

" Turn backup off, since most stuff is in git anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Treat long lines as break lines
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
set wrap "Wrap lines

" Always show the status line
set laststatus=2

" Delete trailing white space on save, useful for Python
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Autoindent
set autoindent

" Common spelling errors
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Make sure the viminfo is always writable on afs
set viminfo=!,'50,<200,s10,:0,n.viminfo
