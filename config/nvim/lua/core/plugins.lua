local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://ghproxy.com/https://github.com/wbthomason/packer.nvim', install_path})
end

local packer = require('packer')

packer.init({
  git = {
    default_url_format = 'https://ghproxy.com/https://github.com/%s.git',
  }
})

return packer.startup(function()
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  use { 'glepnir/dashboard-nvim' }

  use { 'preservim/nerdtree' }
  use { 'Xuyuanp/nerdtree-git-plugin' }
  use { 'neoclide/coc.nvim', branch = 'release' }
  -- vim-plug
  use { 'rescript-lang/vim-rescript' }
  use { 'vim-airline/vim-airline' }
  use { 'vim-airline/vim-airline-themes' }
  use { 'liuchengxu/vim-which-key' }
  use { 'brglng/vim-im-select' }
  use { 'skywind3000/vim-terminal-help' }
  use { 'skywind3000/asynctasks.vim' }
  use { 'skywind3000/asyncrun.vim' }
  use { 'morhetz/gruvbox' }
  use { 'sonph/onehalf', rtp = 'vim/', config = 'vim.cmd[[colorscheme onehalfdark]]' }
  use { 'liuchengxu/vista.vim' }
  use { '~/.vim/plugins/BufOnly' }
  use { 'easymotion/vim-easymotion' }
  -- If you have nodejs and yarn
  use { 'skywind3000/vim-dict' }
  use { 'ferrine/md-img-paste.vim' }
  use { 'christoomey/vim-tmux-navigator' }
  -- useins can have post-install/update hooks
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'junegunn/fzf', dir = '~/.fzf', run = ':call fzf#install()' }

  use { 'junegunn/fzf.vim' }
  use { 'janko-m/vim-test' }
  -- :e this/does/not/exist/file.txt
  use { 'pbrisbin/vim-mkdir' }
  -- highlight form vim-slim
  use { 'slim-template/vim-slim' }
  -- Vim sugar for the UNIX shell commands that need it the most
  -- :DELETE :MOVE ...
  use { 'tpope/vim-eunuch' }
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-repeat' }
  -- git blame
  use { 'tpope/vim-rhubarb' }
  use { 'tpope/vim-surround' }
  use { 'vim-scripts/tComment' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-lua/popup.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'ryanoasis/vim-devicons' }
  use { 'adelarsq/vim-matchit' }

  
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
