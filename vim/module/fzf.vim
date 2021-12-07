function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

" nnoremap <silent> <C-b> :call FZFOpen(':Buffers')<CR>
" nnoremap <silent> <C-g>g :call FZFOpen(':Ag')<CR>
" nnoremap <silent> <C-g>c :call FZFOpen(':Commands')<CR>
" nnoremap <silent> <C-g>l :call FZFOpen(':BLines')<CR>
" nnoremap <silent> <C-p> :call FZFOpen(':Files')<CR>
" nnoremap <silent> <C-M-o> :Vista finder coc<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
