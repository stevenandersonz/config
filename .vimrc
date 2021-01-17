set number
set textwidth=100
set undolevels=1000
set showmatch
set backspace=indent,eol,start
set softtabstop=4
set tabstop=4
set shiftround

set expandtab
set shiftwidth=4	
nmap <C-m> :NERDTreeToggle<CR>
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
Plug 'sickill/vim-monokai'
" install prettier
Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ 'branch': '1.x',
      \ 'for': ['javascript', 'typescript', 'css', 'json', 'markdown', 'html']
      \ }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
call plug#end()
syntax enable
colorscheme gruvbox
imap ii <Esc>
