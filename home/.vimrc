set nocompatible
filetype plugin indent on

set number
set ruler
set showcmd
set showmatch
set visualbell
set cmdheight=2
set scrolloff=2
set laststatus=2

set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/tmp

syntax on

if has('gui_running')
  set background=dark
  colorscheme inkpot "molokai vividchalk elflord
  set guifont=Menlo:h14
  set guioptions-=T
  " MacVim; turn off antialiasing
  "set noantialias
else
  colorscheme elflord
endif

set backspace=indent,eol,start
set autoindent
set smartindent
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

set foldmethod=indent
set nofoldenable

" Turn off mouse while learning Vim
set mousehide
set mouse=

" Wrap text
nmap <leader>w :set wrap!<CR>
" Show search term highlighting
nmap <leader>i :set invhls!<CR>
" Show invisible characters
nmap <leader>l :set list!<CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabedit <C-R>=expand("%:p:h") . "/" <CR>

" Use the same symbols as TextMate for tabstops and EOLs
if &encoding == 'utf-8'
  set listchars=tab:▸\ ,eol:¬,trail:·
endif

if has("autocmd")
" Remember last location in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
