let g:plug_url_format = "https://ghproxy.com/https://github.com/%s.git"
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'brglng/vim-im-select'
Plug 'skywind3000/vim-terminal-help'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'liuchengxu/vista.vim'
Plug 'vim-scripts/BufOnly.vim'
Plug 'easymotion/vim-easymotion'
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'skywind3000/vim-dict'
Plug 'ferrine/md-img-paste.vim'
Plug 'christoomey/vim-tmux-navigator'

" Vim sugar for the UNIX shell commands that need it the most
" :DELETE :MOVE ...
Plug  'tpope/vim-eunuch' 
Plug  'tpope/vim-fugitive' 
Plug  'tpope/vim-repeat' 
" git blame
Plug  'tpope/vim-rhubarb' 
Plug  'tpope/vim-surround' 
Plug  'ryanoasis/vim-devicons' 
Plug  'adelarsq/vim-matchit' 

call plug#end()

