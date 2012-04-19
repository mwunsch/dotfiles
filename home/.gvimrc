if has("gui_macvim")
  set guioptions-=T
  set guifont=Menlo:h14
  set background=light

  "Command-T
  macmenu &File.New\ Tab key=<D-T>
  map <D-t> :CommandT<CR>
  imap <D-t> <Esc>:CommandT<CR>

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

  " Command-Shift-F for Ack
  map <D-F> :Ack<space>

  " MacVim; turn off antialiasing
  "set noantialias
endif
