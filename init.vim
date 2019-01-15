call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'honza/vim-snippets'

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'w0rp/ale'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" JS START
autocmd FileType javascript set formatprg=prettier\ --stdin " Prettier
" JS END

" Initialize plugin system
call plug#end()

