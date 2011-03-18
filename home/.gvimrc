if has("gui_macvim")
  set guioptions-=T
  set guifont=Menlo:h13
  colorscheme jellybeans "habilight

  "Command-T
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
  imap <D-t> <Esc>:CommandT<CR>

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

  " Command-Shift-F for Ack
  map <D-F> :Ack<space> 

  " MacVim; turn off antialiasing
  "set noantialias 
endif
