set nocompatible

" https://github.com/tpope/vim-pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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

colorscheme jellybeans

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

" Opens a vertical split command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>v :vsplit <C-R>=expand("%:p:h") . "/" <CR>

" Clears trailing whitespace
map <Leader><Space> :%s/\s\+$//<CR>:let @/=''<CR>

" Use the same symbols as TextMate for tabstops and EOLs
if &encoding == 'utf-8'
  set listchars=tab:▸\ ,eol:¬,trail:·
endif

if has("autocmd")

" Remember last location in file
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif

" Thorfile, Rakefile and Gemfile are Ruby
  autocmd BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,*.ru,*.cap} set filetype=ruby

" md, markdown, and mk are markdown
  autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set filetype=mkd
  
" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  autocmd FileType python set tabstop=4 textwidth=79

" files with yaml front matter
" http://www.codeography.com/2010/02/20/making-vim-play-nice-with-jekylls-yaml-front-matter.html
  autocmd FileType markdown,textile syntax match Comment /\%^---\_.\{-}---$/

endif 
