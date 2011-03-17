if has("gui_macvim")
  set guioptions-=T
  set guifont=Menlo:h13
  set background=dark
  colorscheme inkpot "molokai vividchalk elflord

  "Command-T
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
  imap <D-t> <Esc>:CommandT<CR>

  " MacVim; turn off antialiasing
  "set noantialias 
endif
