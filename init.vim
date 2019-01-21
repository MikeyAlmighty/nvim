call plug#begin('~/.local/share/nvim/plugged')

Plug 'honza/vim-snippets'

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'w0rp/ale'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'mxw/vim-jsx'

Plug 'Valloric/YouCompleteMe'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 

Plug 'junegunn/fzf.vim'

set number
syntax on

color dracula

filetype indent off
filetype  indent plugin off

set noautoindent
set nowrap
set noexpandtab

" JS START
autocmd FileType javascript set formatprg=prettier\ --stdin " Prettier
" JS END

" Initialize plugin system
call plug#end()

