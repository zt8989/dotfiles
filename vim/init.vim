if has("gui_running")
  set guifont=FiraCode\ Nerd\ Font\ Mono:h14
  set guioptions-=m
  set guioptions-=T
  set noeb vb t_vb=
  au GUIEnter * set vb t_vb=
endif

" Leader
let mapleader = ","

set encoding=utf-8
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0   " Disable modelines as a security precaution
set nomodeline

source ~/.vim/module/plugins.vim
source ~/.vim/module/keymaps.vim
source ~/.vim/module/colors.vim
source ~/.vim/module/coc.vim
source ~/.vim/module/nerdtree.vim
