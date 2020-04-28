call plug#begin('~/.local/share/nvim/plugged')

Plug 'honza/vim-snippets'

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'universal-ctags/ctags'
Plug 'mxw/vim-jsx'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/pangloss/vim-javascript.git'

set number
syntax on
color dracula

filetype indent off
filetype  indent plugin off

let NERDTreeMapOpenInTab='\r'

nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

nnoremap <silent><A-S-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-S-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>

set wildmenu
set noautoindent
set nowrap
set noexpandtab

" JS START
autocmd FileType javascript set formatprg=prettier\ --stdin " Prettier
" JS END

" Initialize plugin system
call plug#end()

