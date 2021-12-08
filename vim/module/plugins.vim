let g:plug_url_format = "https://ghproxy.com/https://github.com/%s.git"
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

