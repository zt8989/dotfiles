function! FZFOpen(command_str)
  " If more than 1 window, and buffer is not modifiable or file type is
  " NERD tree or Quickfix type
  if winnr('$') > 1 && (!&modifiable || &ft == 'nerdtree' || &ft == 'qf')
      " Move one window to the right, then up
      wincmd l
      wincmd k
  endif
  exe a:command_str 
endfunction

" nnoremap <silent> <C-b> :call FZFOpen(':Buffers')<CR>
" nnoremap <silent> <C-g>g :call FZFOpen(':Ag')<CR>
" nnoremap <silent> <C-g>c :call FZFOpen(':Commands')<CR>
" nnoremap <silent> <C-g>l :call FZFOpen(':BLines')<CR>
nnoremap <silent> <C-p> :call FZFOpen(':Telescope find_files')<cr>

" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap <C-p> <cmd>Telescope find_files<cr>
